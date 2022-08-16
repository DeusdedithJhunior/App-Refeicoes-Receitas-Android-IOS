import 'package:flutter/material.dart';

// aqui irá ficar o componente de tela drawer
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  // função quer irá criar os icones
  Widget _createItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(30),
          alignment: Alignment.bottomRight,
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            'Vamos Cozinhar ?',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 26,
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
        const SizedBox(height: 20),
        _createItem(Icons.restaurant, 'Refeições'),
        _createItem(Icons.settings, 'Configurações')
      ]),
    );
  }
}
