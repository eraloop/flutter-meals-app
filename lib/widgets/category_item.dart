import 'package:flutter/material.dart';

import '../screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {

  final String id;
  final String title;
  Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx){
    // Navigator.of(ctx).push(MaterialPageRoute(
    //   builder: (_){
    //   return CategoriesMealScreen(this.id, this.title);
    // }));
    Navigator.of(ctx).pushNamed(
      '/category-meals-screen',
      arguments: {
        'id':id,
        'title': title
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      child: Container(
    
        padding:const EdgeInsets.all(15),
        child: Text(title, 
        style: Theme.of(context).textTheme.subtitle1,),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15),
    
        ),
    
      ),
    );
  }
}