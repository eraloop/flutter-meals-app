import 'package:flutter/material.dart';

import '/screens/filter_screen.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);


  Widget buildListTile( String title, IconData icon, Function tapHandler){
    return ListTile(
          leading: Icon(
            icon, 
            size:26 
            ),
          title: const Text('Meals', 
          style: TextStyle( 
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          )),
          onTap: tapHandler(),
        );
  }
  @override
  Widget build(BuildContext context) {
    return 
    Drawer(
      child: Column(
      children: <Widget> [
        Container(height: 120,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        alignment:Alignment.centerLeft,
        color: Theme.of(context).accentColor,
        child:  const Text("Cooking Up",
          style: TextStyle(
             fontWeight: FontWeight.w900,
            fontSize: 30,
            // color: Theme.of(context).primaryColor,
          ),) ,),

        const SizedBox(height: 20,),

        buildListTile(
          'Meals', 
          Icons.restaurant,
          // () =>{
          //   Navigator.of(context).pushNamed('/')
          // }
          (){
            //  Future.delayed(Duration.zero, () {
                Navigator.of(context).pushNamed('/');
              // });
          }
          ),

        buildListTile('Settings', Icons.settings,
        (){
          Navigator.of(context).pushNamed(FilterScreen.routeName);
        }),

        ],
    ) ,);
  }
}