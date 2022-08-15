import 'package:flutter/material.dart';

// aqui será a classe que terá os atributos ("molde") das categorias dos produtos
class Category {
  final String id;
  final String title;
  final Color color;

  // todos os atributos são finais, então o construtor será do tipo const
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
