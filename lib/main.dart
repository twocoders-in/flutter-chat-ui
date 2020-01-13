import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  var chatList = [
    {
      "photo": "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=30",
      "name": "Sage",
      "message": "Wallis and Futuna leverage"
    },
    {
      "photo": "https://images.unsplash.com/photo-1542148787-0fa852c25cc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=30",
      "name": "Seth",
      "message": "Plastic Uzbekistan Sum Clothing North Dakota"
    },
    {
      "photo": "https://images.unsplash.com/photo-1569124589354-615739ae007b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=30",
      "name": "Halie",
      "message": "Avon Ouguiya"
    },
    {
      "photo": "https://images.unsplash.com/photo-1542206395-9feb3edaa68d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=30",
      "name": "Jordon",
      "message": "turquoise Checking Account Clothing"
    },
    {
      "photo": "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=30",
      "name": "Ralph",
      "message": "card Sports"
    },
    {
      "photo": "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=30",
      "name": "Roberta",
      "message": "Books interfaces Applications"
    },

    {
      "photo": "https://images.unsplash.com/photo-1544098485-2a2ed6da40ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=30",
      "name": "Duane",
      "message": "violet Avon"
    },
    {
      "photo": "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=30",
      "name": "Ernestina",
      "message": "groupware next-generation Alaska"
    },
    {
      "photo": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=30",
      "name": "Gordon",
      "message": "Gold Automated deposit"
    },
    {
      "photo": "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1535&q=30",
      "name": "Felix",
      "message": "Industrial"
    },
  ];



  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: GestureDetector(
          onTap: (){},
          child: Icon(CupertinoIcons.settings),
        ),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(CupertinoIcons.photo_camera),
        ),
        middle: CupertinoTextField(
          placeholder: "Search",
          decoration: BoxDecoration(
            color: Color(0xFFEFEFEF),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Material(
        child: ListView(
          children: chatList.map((snap) {
            return Column(
              children: <Widget>[


                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      image: NetworkImage(snap["photo"]),
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(snap["name"]),
                  subtitle: Text(snap["message"]),
                  trailing: Text("6:89pm"),
                  onTap: (){},
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                ), 

                Divider(),


              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}