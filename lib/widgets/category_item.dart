import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  //values being passed
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w700),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return CategoryMealScreen();
    }));
  }
}
