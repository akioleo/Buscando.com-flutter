import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/product2.jpg"), fit: BoxFit.cover)),
          ),
          Positioned(
            left: 30,
            top: 30 + MediaQuery.of(context).padding.top,
            child: InkWell(
              onTap: () {},
              child: ClipOval(
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        offset: Offset(0, 4),
                        blurRadius: 8)
                  ]),
                  child: Center(
                    child: Image.asset('assets/images/back_arrow.png'),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, -4),
                        blurRadius: 8),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Star Wars",
                            style: new TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset("assets/images/fav.png",
                              height: 30, width: 30),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Row(
                      children: [
                        Text(
                          'R\$25,00',
                          style: new TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '/ unidade.',
                          style: new TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 30,
                      right: 30,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 25),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(63, 200, 101, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Envio através da editora",
                        style: new TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 49,
                        width: 49,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(228, 228, 228, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '-',
                            style: new TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 100,
                        child: Center(
                          child: Text(
                            "1",
                            style: new TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 49,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(63, 200, 101, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '+',
                            style: new TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.07),
                              offset: Offset(0, -3),
                              blurRadius: 12)
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: new TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                'R\$25,00',
                                style: new TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Material(
                          color: Color.fromRGBO(243, 175, 45, 1),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                            Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext) => CardsPage()));
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(63, 200, 101, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Adicionar ao carrinho',
                                style: new TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(      
            child: Container(
              child: productList(context),             
            ),
          ),
          Container(
            height:40,
            width: double.infinity,
             child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
              primary: Colors.green,  
            ),
            label: Text('Voltar', style: new TextStyle(
              fontSize: 18
            ),),
            icon: Icon(
              Icons.navigate_before_rounded,
              size: 40.0,
            ),
            onPressed: () {
              print('Pressed');
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) => ShopPage()));
            },
          )
          ),

          Container(
            color: Colors.black12,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "R\$280,00",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  child: FlatButton(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget productList(context) {
  return ListView(
    children: <Widget>[
      productItem1(context),
      productItem2(context),
      productItem3(context),
      productItem1(context),
      productItem2(context),
      productItem3(context),
    ],
  );
}

Widget productItem1(context) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/product1.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Livro: Guerra Civil"),
              Text(
                "R\$40,00",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("+"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("-"),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


Widget productItem2(context) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/product2.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Livro: Star Wars"),
              Text(
                "R\$60,00",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("+"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("-"),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


Widget productItem3(context) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/product3.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Livro: O Senhor dos Anéis"),
              Text(
                "R\$40,00",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("+"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("-"),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

