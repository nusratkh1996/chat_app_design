import 'package:chat_app_design/widget/fvrtList.dart';
import 'package:chat_app_design/widget/menu_list.dart';
import 'package:chat_app_design/widget/messages.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Messages",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          menuList(),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.lime[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
                    child: Column(
                      children: <Widget>[
                        fvrtList(),
                        messages(),
                      ],
                    ),  
            ),
          ),
        ],
      ),
    );
  }
}
