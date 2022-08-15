import 'package:flutter/material.dart';
import '../models/category.dart';

//aqui será a classe que terá todas as comidas referentes as suas
//respectivas categorias
class CategoriesMealsScreen extends StatelessWidget {
  final Category category;

  // ignore: use_key_in_widget_constructors
  const CategoriesMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: const Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}
