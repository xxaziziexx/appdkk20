import 'package:appdkk/homepage/home_screen.dart';
import 'package:appdkk/screen/dashboardexplorer.dart';
import 'package:appdkk/screen/kioskpdpexplorer.dart';
import 'package:appdkk/screen/meetingRoomExplorer.dart';
import 'package:appdkk/screen/takwimexplorer.dart';
import 'package:appdkk/screen/websiteppdexplorer.dart';
import 'package:flutter/material.dart';

class GridDashboard extends StatelessWidget {
  Items item1 =
      new Items(title: "Takwim", img: "images/date.png", navigateTo: Takwim());

  Items item2 = new Items(
    title: "Tempahan Bilik Mesyuarat",
    img: "images/meeting.png",
    navigateTo: MeetingRoom(),
  );
  Items item3 = new Items(
    title: "Laman Web Rasmi",
    img: "images/website.gif",
    navigateTo: Website(),
  );
  Items item4 = new Items(
    title: "Admin",
    img: "images/admin.png",
    navigateTo: Home(),
  );
  Items item5 = new Items(
    title: "Dashboard Maklumat",
    img: "images/dashboard.png",
    navigateTo: Dashboard(),
  );
  Items item6 = new Items(
    title: "Kiosk Pdp Digital",
    img: "images/education.png",
    navigateTo: Kiosk(),
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 18,
          children: myList.map(
            (data) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => data.navigateTo));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 102, 204, 0.1),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 102, 204, 0.1),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        data.img,
                        width: 42,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Widget navigateTo;

  Items({this.title, this.img, this.navigateTo});
}
