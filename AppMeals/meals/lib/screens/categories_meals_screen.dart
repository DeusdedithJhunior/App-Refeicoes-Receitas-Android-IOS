import 'package:flutter/material.dart';

//aqui será a classe que terá todas as comidas referentes as suas
//respectivas categorias
class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: const Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}
