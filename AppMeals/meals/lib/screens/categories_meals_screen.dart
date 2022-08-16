import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import '../models/category.dart';
import '../components/meal_item.dart';

//aqui será a classe que terá todas as comidas referentes as suas
//respectivas categorias
class CategoriesMealsScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CategoriesMealsScreen(this.meals);

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
