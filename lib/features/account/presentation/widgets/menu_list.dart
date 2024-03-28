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
        Expanded(
          child: ListView(
            children: [
              MenuItem(
                name: "Content",
                onTapped: () => onMenuTapped(0),
              ),
              MenuItem(
                name: "Tracker",
                onTapped: () => onMenuTapped(1),
              ),
              MenuItem(
                name: "Podcast",
                onTapped: () => onMenuTapped(2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
