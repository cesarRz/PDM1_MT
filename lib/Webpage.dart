import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar:
          AppBar(title: const Text('WebPage'), backgroundColor: Colors.black),
      body: const WebView(
        initialUrl: 'https://porfirios.com.mx/',
        javascriptMode: JavascriptMode.unrestricted,
      ));
}
