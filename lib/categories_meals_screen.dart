import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {

  static const routeName = '/category-meals-screen';
  // final String categoryId;
  // final String categoryTitle;

  // CategoriesMealScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String? categoryId = routeArgs['id'];
    final String? categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
    body: ListView.builder(itemBuilder: (ctx, index){
      return 
    }, itemCount: ,)
    
  }
}