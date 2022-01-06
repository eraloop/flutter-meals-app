import 'package:flutter/material.dart';

import '/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Your Filters"),
      ),
      drawer: MainDrawer(),
      body: const Center(
        child: Text("Filters"),
        ),
    );
  }
}