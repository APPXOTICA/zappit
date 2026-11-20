import 'package:webview_flutter/webview_flutter.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';
import 'package:zappit/core/barrel_files/localization.dart';

class WebViewArgs {
  const WebViewArgs({required this.title, required this.url});

  final String title;
  final String url;
}

/// In-app web page (Tutorial, FAQ, terms, help links).
class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, required this.title, required this.url, this.modal = true});

  final String title;
  final String url;

  /// Rises from the bottom with a close button; false = pushed from the
  /// right with a back button (More → Tutorial, FAQ).
  final bool modal;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;
  int _progress = 0;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(AppTokens.dark.bgBase)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (p) => mounted ? setState(() => _progress = p) : null,
        onWebResourceError: (error) {
          if (error.isForMainFrame ?? true) {
            if (mounted) setState(() => _failed = true);
          }
        },
      ));
    final uri = Uri.tryParse(widget.url);
    if (uri != null && uri.hasScheme) _controller.loadRequest(uri);
  }

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: widget.modal
            ? IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () => Navigator.of(context).maybePop(),
              )
            : null,
        bottom: _progress < 100 && !_failed
            ? PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: LinearProgressIndicator(
                  value: _progress / 100,
                  minHeight: 2,
                  backgroundColor: Colors.transparent,
                ),
              )
            : null,
      ),
      body: _failed
          ? Center(
              child: ZpEmptyState(
                icon: Icons.cloud_off_rounded,
                title: S.of(context).cantLoadPage,
                message: S.of(context).checkConnectionShort,
                actions: [
                  ZpButton(
                    label: S.of(context).tryAgain,
                    expand: false,
                    height: AppTokens.targetMin,
                    onPressed: () {
                      setState(() => _failed = false);
                      _controller.reload();
                    },
                  ),
                ],
              ),
            )
          : ColoredBox(color: t.bgBase, child: WebViewWidget(controller: _controller)),
    );
  }
}
