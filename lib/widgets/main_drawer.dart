import 'package:flutter/material.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(
      children: [
        Container(height: 120,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        alignment:Alignment.centerLeft,
        color: Theme.of(context).accentColor,
        child:  const Text("Cooking Up",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: Theme.of(context).primaryColor,
        ),) ,)
      ],
    ) ,);
  }
}