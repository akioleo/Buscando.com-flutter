import 'package:flutter/material.dart';
import 'package:projeto_blog/screens/MyClipper.dart';

class ReadBook extends StatefulWidget {
  @override
  _ReadBookState createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                      Color(0xFF006400),
                      Color(0xFF008000),
                      Color(0xFF32CD32),
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          "Harry Potter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ), Icon(
                            Icons.more_vert,
                            size: 35,
                            color: Colors.white,
                          ),
                      ],
                    ),
                    Text(""),
                    Image.asset("assets/images/hp1.png",
                    width: 300,
                    fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Parte 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Voltar",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
