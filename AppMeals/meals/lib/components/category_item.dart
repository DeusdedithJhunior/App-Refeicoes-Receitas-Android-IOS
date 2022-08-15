import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categories_screen.dart';

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
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15),
        // ignore: sort_child_properties_last
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.5), category.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
