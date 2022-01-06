
import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';



class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding:const EdgeInsets.all(15),
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
        );
  }
}