import 'package:webview_flutter/webview_flutter.dart';
import 'package:zappit/core/barrel_files/ui_core.dart';
import 'package:zappit/shared/widgets/ds/ds.dart';

class WebViewArgs {
  const WebViewArgs({required this.title, required this.url});

  final String title;
  final String url;
}

/// In-app web page (Tutorial, Supported sites, Voice Control help).
class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, required this.title, required this.url});

  final String title;
  final String url;

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
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
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
                title: "Can't load this page",
                message: 'Check your connection and try again.',
                actions: [
                  ZpButton(
                    label: 'Try again',
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
