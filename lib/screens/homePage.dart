import 'package:flutter/material.dart';
import 'package:projeto_blog/main.dart';
import 'package:projeto_blog/screens/MyClipper.dart';
import 'package:projeto_blog/screens/ReadBook.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 25),
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
                          "Biblioteca",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF080808),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Olá! Leonardo",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "Separamos estes livros",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "para você",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/livros_pilha.png",
                            fit: BoxFit.fitWidth,
                            width: 159,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Recentes",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(Icons.sort, color: Colors.grey, size: 25),
                    ],
                  ),
                  SizedBox(height: 10),
                  BookCard(
                    title: "Harry Potter",
                    subtitle: "Parte 1",
                    rating: 4,
                    imgUrl: "assets/images/hp1.png",
                  ),
                  BookCard(
                    title: "Harry Potter",
                    subtitle: "Parte 2",
                    rating: 3,
                    imgUrl: "assets/images/hp2.png",
                  ),
                  BookCard(
                    title: "Harry Potter",
                    subtitle: "Parte 3",
                    rating: 5,
                    imgUrl: "assets/images/hp3.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int rating;
  final String imgUrl;
  const BookCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ReadBook();
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: <Widget>[
                    for (int i = 0; i < rating; i++)
                      Icon(Icons.star, color: Colors.amber, size: 20.0),
                  ],
                )
              ],
            ),
            Image.asset(
              imgUrl,
              width: 160,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
