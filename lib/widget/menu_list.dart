import 'package:flutter/material.dart';

class menuList extends StatefulWidget {
  @override
  _menuListState createState() => _menuListState();
}

class _menuListState extends State<menuList> {
  int selectedIndex = 0;
  List<String> menu = ['Messages', 'Online', 'Group', 'Status'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menu.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
                  child: Text(
                menu[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: selectedIndex == index? Colors.white : Colors.white54,
                    letterSpacing: 1.0),
              )),
            );
          }),
    );
  }
}
