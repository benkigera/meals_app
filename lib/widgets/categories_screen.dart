import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_item.dart';
import 'package:meals_app/models/dummy_data.dart';

class CategoryScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),

        //returns a category item as widgets
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
