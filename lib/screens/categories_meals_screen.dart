import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';


import '../widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMealScreen extends StatelessWidget {

  static const routeName = '/category-meals-screen';
  // final String categoryId;
  // final String categoryTitle;

  // CategoriesMealScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final String title;
    final String imageUrl;
    final int duration;
    final Complexity complexity;
    final Affordability affordability;

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String? categoryId = routeArgs['id'];
    final String? categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
    body: ListView.builder(itemBuilder: (ctx, index){

      return MealItem(
        id: categoryMeals[index].id,
        title: categoryMeals[index].title, 
        imageUrl: categoryMeals[index].imageUrl,
        duration: categoryMeals[index].duration,
        affordability: categoryMeals[index].affordability,
        complexity: categoryMeals[index].complexity
        );
    }, itemCount: categoryMeals.length),);
  }
}