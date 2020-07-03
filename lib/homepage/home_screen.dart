import 'package:appdkk/sidebar/sidebar.dart';
import 'package:appdkk/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';
import 'package:appdkk/Animation/FadeAnimation.dart';
import 'package:appdkk/homepage/grid_dashboard.dart';
import 'package:appdkk/bloc/navigation_bloc/navigation_bloc.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pejabat Pendidikan Daerah Kota Kinabalu'),
      ),
      drawer: SideBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
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
              height: 15,
            ),
            GridDashboard(),
          ],
        ),
      ),
    );
  }
}
