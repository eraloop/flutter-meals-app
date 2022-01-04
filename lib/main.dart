import 'package:flutter/material.dart';
import 'package:mealsapp/categories_meals_screen.dart';

import 'categories_screen.dart';
import 'categories_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DeliMeals",
      // title: Text('DeliMeals', 
      //     // style: TextStyle(
      //     //   // fontFamily: 'RobotoCondensed',
      //     //   // fontSize: 24
      //     // ),
      //     ),
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.pink,
        canvasColor: const Color.fromRGBO(225, 224, 229, 1),
        fontFamily: 'RaleWay',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: const TextStyle(
            color:Color.fromRGBO(20, 51, 51, 1)
          ),

          subtitle1: const TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold
          )
        ),
       
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen()
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key }) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DeliMeals"),
//       ),
//       body: Container(
//         child: Center(
//           child: const Text("Welcome to DeliMeals"),
//         )
//         ),
//     );
//   }
// }
