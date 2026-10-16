import 'package:flutter/services.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/core/utils/link_utils.dart';
import 'package:zappit/features/connection/connection_controller.dart';
import 'package:zappit/features/remote/controllers/remote_controller.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

/// Drops down from the top: paste a link and open it in a new browser tab.
Future<void> showLinkPanel(BuildContext context, WidgetRef ref) {
  return showGeneralDialog<void>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Close',
    barrierColor: context.tokens.scrim,
    transitionDuration: const Duration(milliseconds: 240),
    pageBuilder: (context, _, _) => const _LinkPanel(),
    transitionBuilder: (context, animation, _, child) {
      final curved = CurvedAnimation(parent: animation, curve: Curves.easeOutCubic);
      return SlideTransition(
        position: Tween(begin: const Offset(0, -0.2), end: Offset.zero).animate(curved),
        child: FadeTransition(opacity: curved, child: child),
      );
    },
  );
}

class _LinkPanel extends ConsumerStatefulWidget {
  const _LinkPanel();

  @override
  ConsumerState<_LinkPanel> createState() => _LinkPanelState();
}

class _LinkPanelState extends ConsumerState<_LinkPanel> {
  final _controller = TextEditingController();
  String? _error;
  bool _sending = false;
  bool _clipboardHasUrl = false;

  @override
  void initState() {
    super.initState();
    _checkClipboard();
  }

  Future<void> _checkClipboard() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    final text = data?.text ?? '';
    if (mounted) setState(() => _clipboardHasUrl = LinkUtils.firstUrlIn(text) != null);
  }

  Future<void> _paste() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    final url = LinkUtils.firstUrlIn(data?.text ?? '');
    if (url != null) {
      _controller.text = url.toString();
      setState(() => _error = null);
    }
  }

  Future<void> _open() async {
    if (_sending) return;
    final uri = LinkUtils.normalize(_controller.text);
    if (uri == null) {
      setState(() => _error = 'Enter a link that starts with http or https');
      return;
    }
    setState(() {
      _error = null;
      _sending = true;
    });
    await ref.read(remoteControllerProvider).openUrl(uri.toString());
    if (mounted) Navigator.of(context).maybePop();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final browser = ref.watch(connectionStatusProvider).selectedLabel ?? 'your browser';

    return Align(
      alignment: Alignment.topCenter,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: AppTokens.contentMaxWidth + 64),
          padding: EdgeInsets.fromLTRB(
            AppTokens.space4,
            MediaQuery.paddingOf(context).top + AppTokens.space2,
            AppTokens.space4,
            AppTokens.space4,
          ),
          decoration: BoxDecoration(
            color: t.bgRaised,
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(AppTokens.radiusLg)),
            border: Border(bottom: BorderSide(color: t.hairline)),
            boxShadow: const [BoxShadow(color: Color(0x80000000), blurRadius: 32, offset: Offset(0, 8))],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(child: Text('Open a link', style: AppText.heading.copyWith(color: t.ink))),
                  IconButton(
                    onPressed: () => Navigator.of(context).maybePop(),
                    icon: const Icon(Icons.close_rounded),
                    tooltip: 'Close',
                  ),
                ],
              ),
              const SizedBox(height: AppTokens.space2),
              Container(
                height: 56,
                padding: const EdgeInsets.only(left: AppTokens.space3, right: 4),
                decoration: BoxDecoration(
                  color: t.surface200,
                  borderRadius: BorderRadius.circular(AppTokens.radiusSm),
                  border: Border.all(color: _error != null ? t.signalOff : t.hairlineStrong),
                ),
                child: Row(
                  children: [
                    Icon(Icons.link_rounded, color: t.inkMuted),
                    const SizedBox(width: AppTokens.space2),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        autofocus: true,
                        keyboardType: TextInputType.url,
                        textInputAction: TextInputAction.go,
                        autocorrect: false,
                        onSubmitted: (_) => _open(),
                        onChanged: (_) => _error == null ? null : setState(() => _error = null),
                        style: AppText.body.copyWith(color: t.ink),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: false,
                          hintText: 'Paste a video link',
                          hintStyle: AppText.body.copyWith(color: t.inkMuted),
                        ),
                      ),
                    ),
                    if (_clipboardHasUrl)
                      IconButton(
                        onPressed: _paste,
                        tooltip: 'Paste',
                        icon: Icon(Icons.content_paste_rounded, color: t.inkMuted),
                      ),
                    const SizedBox(width: 4),
                    SizedBox(
                      height: AppTokens.targetMin,
                      child: ZpButton(
                        label: 'Open',
                        expand: false,
                        style: ZpButtonStyle.accent,
                        height: AppTokens.targetMin,
                        radius: 8,
                        onPressed: _sending ? null : _open,
                      ),
                    ),
                  ],
                ),
              ),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                  child: Text(_error!, style: AppText.label.copyWith(color: t.signalOff)),
                ),
              const SizedBox(height: AppTokens.space3),
              Text(
                'Paste a video link and tap Open. It opens in a new tab in $browser.',
                style: AppText.label.copyWith(color: t.inkMuted, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
