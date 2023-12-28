import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuList extends StatelessWidget {

  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MenuItem(name: "Reader"),
        MenuItem(name: "Vocabulary"),
        MenuItem(name: "Listening tracker"),
        MenuItem(name: "Reading tracker"),
        MenuItem(name: "You progress"),
        MenuItem(name: "Premium"),
      ],
    );
  }
}
