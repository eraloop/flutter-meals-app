
import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';



class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeals"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15
    ),
        children: DUMMY_DATA.map((category) => 

        CategoryItem(
            category.id,
            category.title,
            category.color
          )
        ).toList(),
        ),
      ),
    );
  }
}