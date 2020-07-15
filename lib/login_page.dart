import 'package:appdkk/Animation/FadeAnimation.dart';
import 'package:appdkk/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 20,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue[900],
          Colors.blue[500],
          Colors.lightBlueAccent[100]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    Container(
                      child: Image.asset("images/jatakpm.png", width: 300),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.4,
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 102, 204, 0.3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    //padding: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Masukkan Emel",
                                          contentPadding:
                                              EdgeInsets.only(top: 16.0),
                                          prefixIcon: Icon(Icons.email,
                                              color: Colors.white),
                                          hintStyle:
                                              TextStyle(color: Colors.white70),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Masukkan Katalaluan",
                                          contentPadding:
                                              EdgeInsets.only(top: 16.0),
                                          prefixIcon: Icon(Icons.vpn_key,
                                              color: Colors.white),
                                          hintStyle:
                                              TextStyle(color: Colors.white70),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "Lupa katalaluan?",
                              style: TextStyle(color: Colors.grey[700]),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.6,
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Log Masuk'),
                                textColor: Colors.white,
                                color: Colors.blue[900],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.blue[900]),
                                ),
                                onPressed: () {
                                  navigateToSideBarLayout(context);
                                },
                              )
                            ],
                          )),
                        ),
                        SizedBox(
                          height: 95,
                        ),
                        FadeAnimation(
                            1.7,
                            Text(
                              "Hakcipta Terpelihara 2020 © Pejabat Pendidikan Daerah Kota Kinabalu",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[700]),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future navigateToSideBarLayout(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SideBarLayout()));
  }
}
