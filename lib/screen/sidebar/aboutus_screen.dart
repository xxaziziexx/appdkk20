import 'package:flutter/material.dart';
import 'package:appdkk/Animation/FadeAnimation.dart';
import 'package:appdkk/homepage/grid_dashboard.dart';
import 'package:appdkk/bloc/navigation_bloc/navigation_bloc.dart';

class About extends StatefulWidget with NavigationStates {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<About> {
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
            new Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, //.horizontal
                  child: new Text(
                    "       Awalnya dikenali dengan nama Pejabat Pendidikan Bahagian Pantai Barat Dan Labuan Ditukar menjadi Pejabat Pendidikan Bahagian Pantai Barat Selatan (PB/S) merangkumi 5 daerah iaitu Kota Kinabalu, Penampang, Papar, Tuaran dan Tamparuli. Tahun 2003 diubah lagi namanya menjadi Pejabat Pelajaran Gabungan Kota Kinabalu menggabungkan 3 daerah iaitu Kota Kinabalu, Penampang dan Tuaran.Bulan September 2008 diubah nama menjadi Pejabat Pelajaran Daerah Kota Kinabalu. Pada 30 Ogos 2013 diubah nama menjadi Pejabat Pendidikan Daerah Kota Kinabalu. \n\n\n      Pejabat Pendidikan Daerah Kota Kinabalu Mempunyai seramai 41 pegawai dan 24 staff sokongan yang bertugas menjalankan tugas mereka.Pejabat Pelajaran Daerah Kota Kinabalu yang terletak di aras 5 bangunan KWSP di Blok C & D menempatkan 7 unit yang besar untuk menyelia dan memastikan 82 buah sekolah didaerah Kota Kinabalu berada dalam keadaan cemerlang menerusi motto PPD Kota Kinabalu Dare To Change",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
