import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.name,
    required this.onTapped,
  });

  final String name;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapped,
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
