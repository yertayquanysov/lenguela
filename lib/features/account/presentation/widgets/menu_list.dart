import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        CupertinoButton(
          color: Colors.lightGreen,
          child: const Text("English"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  content: SizedBox(
                    width: double.minPositive,
                    child: ListView(
                      children: const [
                        ListTile(title: Text("Spanish")),
                        ListTile(title: Text("Arabic")),
                        ListTile(title: Text("Korean")),
                        ListTile(title: Text("English")),
                        ListTile(title: Text("Turkey")),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: const [
              MenuItem(name: "Reader"),
              MenuItem(name: "Vocabulary"),
              MenuItem(name: "Listening tracker"),
              MenuItem(name: "Reading tracker"),
              MenuItem(name: "You progress"),
              MenuItem(name: "Premium"),
            ],
          ),
        ),
      ],
    );
  }
}
