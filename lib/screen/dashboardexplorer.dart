import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Dashboard Maklumat",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl: Uri.dataFromString(
                    '<iframe width="600" height="450" src="https://datastudio.google.com/embed/reporting/96b0d833-425a-4530-8d5d-a4b8185db712/page/qgR" frameborder="0" style="border:0" allowfullscreen></iframe>',
                    mimeType: 'text/html')
                .toString(),
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
