import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Kiosk extends StatefulWidget {
  @override
  _KioskState createState() => new _KioskState();
}

class _KioskState extends State<Kiosk> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Kiosk Pdp Digital",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl: "https://sites.google.com/view/kioskpdpdigitalppdkk",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
