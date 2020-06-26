import 'package:flutter/material.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(title: "Takwim", img: "images/date.png");

  Items item2 = new Items(
    title: "Tempahan Bilik Mesyuarat",
    img: "images/meeting.png",
  );
  Items item3 = new Items(
    title: "Laman Web Rasmi",
    img: "images/website.gif",
  );
  Items item4 = new Items(
    title: "Admin",
    img: "images/admin.png",
  );
  Items item5 = new Items(
    title: "Dashboard Maklumat",
    img: "images/dashboard.png",
  );
  Items item6 = new Items(
    title: "Kiosk Pdp Digital",
    img: "images/education.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.all(30),
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
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
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({this.title, this.img});
}