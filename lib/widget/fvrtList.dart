import 'package:chat_app_design/model/message_model.dart';
import 'package:flutter/material.dart';

class fvrtList extends StatefulWidget {
  @override
  _fvrtListState createState() => _fvrtListState();
}

class _fvrtListState extends State<fvrtList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Favorite",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                    size: 25,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          // color: Colors.brown,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: fvrt.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(fvrt[index].imageUrl),
                          radius: 30,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          fvrt[index].name,
                          style:
                              TextStyle(fontSize: 13, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
