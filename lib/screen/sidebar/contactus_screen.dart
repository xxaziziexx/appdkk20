import 'package:appdkk/sidebar/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:appdkk/Animation/FadeAnimation.dart';
import 'package:appdkk/homepage/grid_dashboard.dart';
import 'package:appdkk/bloc/navigation_bloc/navigation_bloc.dart';

class Contact extends StatefulWidget with NavigationStates {
  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.lightBlueAccent[100],
          Colors.blue[400],
          Colors.blue[900],
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          1,
                          Container(
                            child:
                                Image.asset("images/jatakpm.png", width: 300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.5,
                            Text(
                              "PEJABAT PENDIDIKAN DAERAH \nKOTA KINABALU ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        FadeAnimation(
                            1.5,
                            Text(
                              "Blok C & D, Tingkat 5, Bangunan KWSP \n88100 Kota Kinabalu \nSabah.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "Emel : pentadbiran@ppdkk.edu.my\nNo Tel : 088-233 202 \nNo. Fax : 088-239 450",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "Waktu Bekerja : 8.00 Pagi - 5.00 Petang",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Image.asset("images/website.png",
                                width: 30, height: 30),
                          ),
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "https://www.ppdkk.edu.my/",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Image.asset("images/facebook.png",
                                width: 30, height: 30),
                          ),
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "Pejabat Pendidikan Daerah Kota Kinabalu",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Image.asset("images/instagram.png",
                                width: 30, height: 30),
                          ),
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "@PPDKotaKinabaluSabah",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.5,
                          Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Image.asset("images/twitter.png",
                                width: 30, height: 30),
                          ),
                        ),
                        FadeAnimation(
                            1.5,
                            Text(
                              "@PPDKK",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )),
                        SizedBox(
                          height: 50,
                        ),
                        FadeAnimation(
                            1.7,
                            Text(
                              "Hakcipta Terpelihara 2020 © Pejabat Pendidikan Daerah Kota Kinabalu",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
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
}
