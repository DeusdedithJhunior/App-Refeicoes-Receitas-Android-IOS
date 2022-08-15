import 'package:flutter/material.dart';
import '../models/category.dart';

//aqui ficará a classe que irá "converter" a base de dados
//em um componente visual, que será mostrado dentro de categories screen
class CategoryItem extends StatelessWidget {
  //variavel que irá receber os atributos de classe category via parametro
  final Category category;

  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(category.title),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [category.color.withOpacity(0.5), category.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );
  }
}
