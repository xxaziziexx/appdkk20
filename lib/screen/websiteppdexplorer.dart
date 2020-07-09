import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Website extends StatefulWidget {
  @override
  _WebsiteState createState() => new _WebsiteState();
}

class _WebsiteState extends State<Website> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Laman Web Rasmi",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl: "https://www.ppdkk.edu.my/",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
