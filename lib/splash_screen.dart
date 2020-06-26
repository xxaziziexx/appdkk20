import 'dart:async';
import 'package:appdkk/login_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(30.0),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.blue[900],
              Colors.blue[500],
              Colors.lightBlueAccent,
            ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 180),
                Container(
                  child: Image.asset("images/jatakpm.png", width: 300),
                ),
                Padding(padding: EdgeInsets.all(30)),
                CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  strokeWidth: 1,
                ),
                SizedBox(
                  height: 150,
                ),
                Text(
                  "Hakcipta Terpelihara 2020 © Pejabat Pendidikan Daerah Kota Kinabalu",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            )));
  }
}
