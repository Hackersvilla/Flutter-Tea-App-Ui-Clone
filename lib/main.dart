import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Second.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottombar(),
      backgroundColor: Color(0xff0C0F14),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbar(),
            Middle_text(),
            SizedBox(
              height: 15,
            ),
            Middle_search(),
            second(),
            dot(),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Second()));
                  },
                  child: Hero(
                    tag: "1-coffee",
                    child: lastcontainer(
                        0, "images/coffe.jpg", 4.5, "With Oat Milk", 4.20),
                  ),
                ),
                lastcontainer(0, "images/chai.jpg", 4.2, "With Chocolate", 3.14)
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              margin: EdgeInsets.only(right: 180),
              child: Text(
                "Special for you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            last_container()
          ],
        ),
      ),
    );
  }

  Widget Appbar() {
    return Container(
      width: 1000,
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            decoration: BoxDecoration(
                color: Color(0xff52555A),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.dashboard_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(
            width: 0,
          ),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.fromLTRB(220, 0, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("images/face.jpg"), fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }

  Widget Bottombar() {
    return Opacity(
      opacity: 0.6,
      child: Container(
        height: 60,
        decoration: BoxDecoration(color: Color(0xff0C0F14)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.circle_notifications,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget Middle_search() {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xff141921)),
        child: Row(
          children: [
            Opacity(
              opacity: 0.6,
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                child: Text(
                  "Find Your Coffeee...",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Middle_text() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 40, 132, 0),
      child: Column(
        children: [
          Text(
            "Find the best",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Coffee for you.",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }

  Widget second() {
    return Container(
      width: 300,
      height: 50,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                Middle_down_text("Cappuccino", Color(0xffA45F38)),
                SizedBox(
                  width: 15,
                ),
                Middle_down_text('Espesso', Color(0xff494C51)),
                SizedBox(
                  width: 15,
                ),
                Middle_down_text("Latte", Color(0xff494C51)),
                SizedBox(
                  width: 15,
                ),
                Middle_down_text("Espesso", Color(0xff494C51)),
                SizedBox(
                  width: 15,
                ),
                Middle_down_text("Cappuccino", Color(0xff494C51))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget Middle_down_text(String text, var color) {
    return Container(
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 18),
      ),
    );
  }

  Widget dot() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 200, 0),
      width: 10,
      height: 10,
      decoration:
          BoxDecoration(color: Color(0xffA45F38), shape: BoxShape.circle),
    );
  }

  Widget lastcontainer(
      double right_margin, var image, double rating, var desc, double price) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, right_margin, 0),
      width: 150,
      height: 230,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff262B33),
            Color(0xff121419),
            Color(0xff101319),
            Color(0xff211F23)
          ]),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 50,
                height: 25,
                margin: EdgeInsets.only(top: 5, right: 6),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff262B33),
                      Color(0xff121419),
                      Color(0xff101319),
                      Color(0xff211F23)
                    ]),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "$rating",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              "Cappuccino",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              desc,
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  r"$",
                  style: TextStyle(
                      color: Color(0xffA46139), fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 3),
                child: Text(
                  "$price",
                  style: TextStyle(
                      color: Colors.white60, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(left: 50),
                  child: Icon(Icons.add, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }

  Widget last_container() {
    return Container(
      width: 330,
      height: 150,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff262B33),
            Color(0xff121419),
            Color(0xff101319),
            Color(0xff211F23)
          ]),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage('images/i.jpg'), fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "5 Coffee Beans You",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Text(
                    "Must Try!",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: 50,
                    height: 30,
                    margin: EdgeInsets.only(left: 100),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(18)),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white70,
                      size: 20,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  
}
