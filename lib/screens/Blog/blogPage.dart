import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Center(
          child: SizedBox(
            child: Text("       Feed"),
            width: 100,
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/images/procura-de-emprego 1.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: TextButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem1(),
            cardItem2(),
            cardItem3(),
            cardItem4(),
            cardItem5(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem1() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcjO9D2_DOgqxvWaN1sp6VeL-v7Dk_89w9uFL0U7kHbD6mRSSl3FTttHOXr_jTa-Cy6g&usqp=CAU"),
          ),
          title: Text("Leonardo Akio"),
          subtitle: Text("16/06/2021"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/images/noticia1.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "WhatsApp corrigiu uma fraqueza que estava tendo, hackers estariam utilizando as GIFs do aplicativo, para acessar as mensagens que os usu??rios trocavam, at?? mesmo a m??dia do celular. E felizmente, o WhatsApp j?? atualizou o aplicativo agora a falha n??o existe mais, para a seguran??a de quem usa.",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
          ),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share, color: Colors.blue.shade700),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cardItem2() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcjO9D2_DOgqxvWaN1sp6VeL-v7Dk_89w9uFL0U7kHbD6mRSSl3FTttHOXr_jTa-Cy6g&usqp=CAU"),
          ),
          title: Text("Leonardo Akio"),
          subtitle: Text("14/06/2021"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/images/noticia2.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "O uso de aplicativos m??veis ?? cada vez mais comum, sendo que no in??cio a aplica????o era vista como ???luxo??? de algumas organiza????es de grande porte, servindo apenas como algo sup??rfluo.",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 15)),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share, color: Colors.blue.shade700),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cardItem3() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcjO9D2_DOgqxvWaN1sp6VeL-v7Dk_89w9uFL0U7kHbD6mRSSl3FTttHOXr_jTa-Cy6g&usqp=CAU"),
          ),
          title: Text("Leonardo Akio"),
          subtitle: Text("13/06/2021"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/images/noticia3.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "Twitter reabre solicita????o para contas verificadas; veja o que muda. Agora, para receber o selo, ?? preciso se enquadrar em alguma das categorias: poder p??blico; empresas, marcas e organiza????es sem fins lucrativos; jornalismo; entretenimento; esportes; e ativismo.",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 15)),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share, color: Colors.blue.shade700),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cardItem4() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcjO9D2_DOgqxvWaN1sp6VeL-v7Dk_89w9uFL0U7kHbD6mRSSl3FTttHOXr_jTa-Cy6g&usqp=CAU"),
          ),
          title: Text("Leonardo Akio"),
          subtitle: Text("10/06/2021"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/images/noticia4.jpeg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "Nubank, Pan e PicPay lideram downloads de aplicativos de institui????es financeiras",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 15)),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share, color: Colors.blue.shade700),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cardItem5() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcjO9D2_DOgqxvWaN1sp6VeL-v7Dk_89w9uFL0U7kHbD6mRSSl3FTttHOXr_jTa-Cy6g&usqp=CAU"),
          ),
          title: Text("Leonardo Akio"),
          subtitle: Text("05/06/2021"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/images/noticia5.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "A Associa????o Brasileira de Lawtechs e Legaltechs ??? AB2L cresceu de 20 membros para 422. Representa um crescimento de 2.400% em tr??s anos no n??mero de Lawtechs associadas em 13 categorias.",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 15)),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share, color: Colors.blue.shade700),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    ),
  );
}
