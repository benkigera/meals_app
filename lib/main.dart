import 'package:flutter/material.dart';
import 'package:meals_app/widgets/categories_screen.dart';
import 'package:meals_app/widgets/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      // home: CategoryScreen(),
      routes: {
        '/': (ctx) => CategoryScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
      },
    );
  }
}
