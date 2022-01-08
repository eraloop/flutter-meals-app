import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {

  static const routeName = '/meal-details-screen';

  const MealDetailsScreen({Key? key}) : super(key: key);

  Widget buildSectionTitle(BuildContext ctx, String title){
    return  Container(
            margin:const EdgeInsets.symmetric(vertical: 10),
            child: Text(title, 
            style: Theme.of(ctx).textTheme.subtitle1,),
          );
  }

  Widget buildContainer(Widget child){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:   Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0)
      ),
      height: 200,
      width: 400,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: child
      );
  }

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String? mealId = routeArgs['id'];

    final selectedMeal = DUMMY_MEALS.firstWhere((meal)=>meal.id == mealId);

    return Scaffold(
      appBar: AppBar( 
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(selectedMeal.imageUrl,
            fit: BoxFit.cover,
            ),
          ),

          buildSectionTitle(context, 'Ingredients'),

          buildContainer( 
            ListView.builder(itemBuilder: (ctx, index)=>
               Card(
                 color: Theme.of(context).accentColor,
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text(selectedMeal.ingredients[index],
                   style: const TextStyle(color: Colors.white),
                   ),
                 ),
               )
            , itemCount: selectedMeal.ingredients.length,),
          ),
          buildSectionTitle(context, 'Steps'),
          buildContainer(
            ListView.builder(itemBuilder: (ctx, index)=> Column(
              children: [
                ListTile(
                  leading: CircleAvatar(child:Text('# ${index + 1}'),),
                  title: Text(selectedMeal.steps[index]),
                ),
                const Divider()
              ],
            ) ,itemCount: selectedMeal.steps.length,)
          )
        ],
      )
    ));
    
    
  }
}