import 'package:flutter/material.dart';
import 'package:projeto_blog/main.dart';
import 'package:projeto_blog/screens/MyClipper.dart';
import 'package:projeto_blog/screens/homePage.dart';

class ReadBook extends StatefulWidget {
  @override
  _ReadBookState createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEVELOPER"),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                height: 330,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Colors.red.shade700,
                        Colors.red.shade600,
                        Colors.red.shade500,
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(""),
                    Image.asset(
                      "assets/images/ibm.png",
                      width: 180,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 10.0),
                    Text(""),
                    Text(
                      "IBM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                    )
                  ]),
              child: Column(
                children: <Widget>[
                  Text(
                    "Benefícios: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Temos o vale alimentação ou refeição, você escolhe, com um valor acima da média da nossa região. Ah, e esse benefício não é suspendido nas férias, pra você continuar se alimentando bem; Vale transporte ou a possibilidade de vaga para carro ou moto no prédio da empresa;",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(""),
                  Text(
                    "O que é desejável: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Conhecimentos nas tecnologias a seguir: Cloud (AWS/Azure/GCP); Apache, NGINX e Tomcat; Linux e Windows Server; MongoDB e ElasticSearch; Oracle, MySQL ou SQLServer; Ansible, Jenkins e Cloudformation; Docker; JavaScript.",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(""),
                  Text(
                    "Carga Horária: ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "40h semanais",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(""),
                ],
              ),
            ),
            Text(""),
            Container(
                height: 40,
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade700,
                  ),
                  label: Text(
                    'Saiba mais',
                    style: new TextStyle(fontSize: 18),
                  ),
                  icon: Icon(
                    Icons.navigate_next_rounded,
                    size: 40.0,
                  ),
                  onPressed: () {
                    print('Pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => MyApp()));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
