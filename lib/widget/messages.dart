import 'package:chat_app_design/model/message_model.dart';
import 'package:flutter/material.dart';

class messages extends StatefulWidget {
  @override
  _messagesState createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20),
          itemCount: contacts.length,
          itemBuilder: (context, index){
            var contact = contacts[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                margin: contact.unread ? EdgeInsets.only(right: 20) : EdgeInsets.only(),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                color: contact.unread ? Colors.red[100] : Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )

                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(contact.sender.imageUrl),
                      radius: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(contact.sender.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(contact.text,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey),overflow: TextOverflow.ellipsis,)
                          )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(contact.time,style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        contact.unread ? Container(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("new",style: TextStyle(color: Colors.white),)
                          ) : Container(
                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("")
                          )
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          ),
      ),
    );
  }
}
