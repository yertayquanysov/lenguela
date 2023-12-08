import 'package:flutter/material.dart';

class ViewContentPage extends StatelessWidget {
  const ViewContentPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: text
            .split(".")
            .map(
              (e) => TextButton(
                onPressed: () {},
                child: Text(e),
              ),
            )
            .toList(),
      ),
    );
  }
}
