import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Takwim extends StatefulWidget {
  @override
  _TakwimState createState() => new _TakwimState();
}

class _TakwimState extends State<Takwim> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Takwim",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl:
                "https://calendar.google.com/calendar/embed?src=ppdkk.edu.my_i0vkibhjfa18kdk7rd9erjprfc@group.calendar.google.com&ctz=Asia/Kuching&pli=1",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
