import 'package:chat_app_design/model/user_model.dart';

class Message{
  final User sender;
  String time;
  String text;
  bool isLiked;
  bool unread;

Message({
  this.sender,
  this.time,
  this.text,
  this.isLiked,
  this.unread
});

}

final User currentUser = User(
  id: 0,
  name: "Nusrat Khan",
  imageUrl: "assets/images/harry.jpg"
);

final User alisa = User(
  id: 1,
  name: "Alisa",
  imageUrl: "assets/images/alisa.jpg"
);
final User harry = User(
  id: 2,
  name: "Harry",
  imageUrl: "assets/images/harry.jpg"
);
final User jack = User(
  id: 3,
  name: "Jack Richerd",
  imageUrl: "assets/images/jack.jpg"
);
final User john = User(
  id: 4,
  name: "John Doe",
  imageUrl: "assets/images/john.jpg"
);
final User peter = User(
  id: 5,
  name: "Mr.Peter",
  imageUrl: "assets/images/peter.jpg"
);
final User robben = User(
  id: 6,
  name: "Robben",
  imageUrl: "assets/images/robben.jpg"
);
final User stefan = User(
  id: 6,
  name: "Stefan",
  imageUrl: "assets/images/stefan.jpg"
);


//home screen contacts.....

List<Message> contacts = [
  Message(
    sender: alisa,
    text: "Hello there im Alisa What's your name.",
    time: "8:20 AM",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: jack,
    text: "Hello there im jack What's your name.",
    time: "2:20 PM",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: john,
    text: "Hello there im john What's your name.",
    time: "8:20 AM",
    isLiked: false,
    unread: false
  ),
  Message(
    sender: peter,
    text: "Hello there im Peter What's your name.",
    time: "1:20 PM",
    isLiked: false,
    unread: false
  ),
  Message(
    sender: robben,
    text: "Hello there!!",
    time: "8:20 AM",
    isLiked: false,
    unread: false
  ),
  Message(
    sender: stefan,
    text: "Hi.",
    time: "6:00 AM",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: alisa,
    text: "Hello there im Alisa What's your name.",
    time: "8:20 AM",
    isLiked: false,
    unread: false
  ),
  Message(
    sender: alisa,
    text: "Hello there im Alisa What's your name.",
    time: "8:20 AM",
    isLiked: false,
    unread: false
  ),

];


