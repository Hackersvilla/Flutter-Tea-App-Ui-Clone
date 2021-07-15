import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C0F14),
      body: SingleChildScrollView(
        child: Column(
          children: [Upper_design()],
        ),
      ),
    );
  }

  Widget Upper_design() {
    return Container(
      child: Stack(
        children: [
          //for image
          Hero(
            tag: '1-coffee',
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 35, 10, 0),
              width: 400,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('images/coffe.jpg'),
                    fit: BoxFit.fitHeight),
              ),
            ),
          ),

          //for app bar
          Container(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff12151B),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Color(0xff36373B),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff12151B),
                  ),
                  margin: EdgeInsets.fromLTRB(220, 50, 0, 0),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xff36373B),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
