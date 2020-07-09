import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MeetingRoom extends StatefulWidget {
  @override
  _MeetingRoomState createState() => new _MeetingRoomState();
}

class _MeetingRoomState extends State<MeetingRoom> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Tempahan Bilik Mesyuarat",
              style: TextStyle(
                fontSize: 17.0,
              ),
            )),
        body: WebView(
            initialUrl: "https://www.ppdkk.edu.my/booking/web/admin.php",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }));
  }
}
