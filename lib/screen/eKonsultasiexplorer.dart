import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class eKonsultasi extends StatefulWidget {
  @override
  _eKonsultasiState createState() => new _eKonsultasiState();
}

class _eKonsultasiState extends State<eKonsultasi> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "e-Konsultasi OK9",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl:
                "https://sites.google.com/ppdkk.edu.my/ppdkotakinabaluonestopcentre/home?pli=1&authuser=1",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
