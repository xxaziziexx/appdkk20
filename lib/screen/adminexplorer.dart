import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => new _AdminState();
}

class _AdminState extends State<Admin> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Administrator",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl:
                "https://www.ppdkk.edu.my/wp-login.php?redirect_to=https%3A%2F%2Fwww.ppdkk.edu.my%2Fwp-admin%2F&reauth=1",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
