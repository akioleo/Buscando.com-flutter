import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
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
              image: AssetImage("assets/images/profile.png"),
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
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
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
          child: Image.asset("assets/images/livros.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(Icons.favorite, color: Colors.red,),
                onPressed: () {},
              ),
              TextButton(
                child: Icon(Icons.share, color: Colors.green),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    ),
  );
}
