import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentListPage extends StatelessWidget {
  const ContentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.plus),
      ),
      body: ListView.builder(
        itemBuilder: (_, idx) {
          return ListTile(
            title: const Text("How to start Youtube channel?"),
            onTap: () {},
          );
        },
      ),
    );
  }
}
