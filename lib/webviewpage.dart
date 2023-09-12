import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;

  WebViewPage({required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Github Profile'),
        centerTitle: true,
      ),
      body: WebViewWidget(
          controller: WebViewController()
            ..loadRequest(Uri.parse(widget.url))
            ..clearCache()),
    );
  }
}
