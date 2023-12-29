import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VocabularyListPage extends StatelessWidget {
  const VocabularyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vocabulary: 15 409"),
      ),
      body: ListView.builder(
        itemBuilder: (_, idx) {
          return ListTile(
            title: const Text(
              "Focus",
              style: TextStyle(fontSize: 20),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                size: 18,
                color: Colors.black38,
              ),
            ),
          );
        },
      ),
    );
  }
}
