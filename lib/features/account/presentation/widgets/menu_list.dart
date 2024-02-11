import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key, required this.onMenuTapped});

  final Function(int page) onMenuTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        MaterialButton(
          color: Colors.grey,
          child: const Text("English"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  content: SizedBox(
                    width: double.minPositive,
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        ListTile(
                          title: Text("Spanish"),
                        ),
                        ListTile(
                          title: Text("Arabic"),
                        ),
                        ListTile(
                          title: Text("Korean"),
                        ),
                        ListTile(
                          title: Text("English"),
                        ),
                        ListTile(
                          title: Text("Turkey"),
                        ),
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
            children: [
              MenuItem(
                name: "Content",
                onTapped: () => onMenuTapped(0),
              ),
              MenuItem(
                name: "Vocabulary",
                onTapped: () => onMenuTapped(1),
              ),
              MenuItem(
                name: "Flashcard",
                onTapped: () => onMenuTapped(2),
              ),
              MenuItem(
                name: "Tracker",
                onTapped: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
