import 'package:flutter/material.dart';
import '../models/category.dart';

//aqui ficará a classe que irá "converter" a base de dados
//em um componente visual, que será mostrado dentro de categories screen
class CategoryItem extends StatelessWidget {
  //variavel que irá receber os atributos de classe category via parametro
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(category.title);
  }
}
