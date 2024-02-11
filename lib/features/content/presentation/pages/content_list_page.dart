import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lenguela/core/ext.dart';
import 'package:lenguela/features/content/presentation/pages/add_content_page.dart';

class ContentListPage extends StatelessWidget {
  const ContentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.toPage(const AddContentPage()),
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
