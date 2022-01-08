import 'package:flutter/material.dart';

// import 'package:mealsapp/screens/filter_screen.dart';
import '/screens/favourites_screen.dart';

import '/screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({ Key? key }) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

 final List<Map<String, Widget>> _pages = [
    {
      "page":  const CategoriesScreen(),
      "title": const Text("Categories")
    },
   { 
     "page": const FavouritesScreen(),
     "title":const Text("Your Favourites")
    }
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _pages[_selectedPageIndex]["title"],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting, 

        items: [ 
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.category),
            label: 'Categories'),

            BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon:const  Icon(Icons.star),
            label: 'Favourites')
        ],
      ),
    );
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Meals'),
    //       bottom: const TabBar(

    //         tabs: <Widget>[
    //           Tab(icon: Icon(Icons.category), text: 'Categories',),
    //           Tab(icon: Icon(Icons.star), text: 'Favorites',)
    //         ]),
    //     ),
    //     body: const TabBarView(children: <Widget> [
    //       CategoriesScreen(), 
    //       FavouritesScreen()

    //     ],),
    //   ),
    // );

  }
}