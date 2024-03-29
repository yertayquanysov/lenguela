import 'package:flutter/material.dart';
import 'package:lenguela/core/ext.dart';
import 'package:lenguela/features/flashcard/presentation/pages/review_flashcard_page.dart';

class FlashcardPage extends StatelessWidget {
  const FlashcardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, idx) {
          return ListTile(
            title: const Text("Default"),
            onTap: () {
              context.toPage(const ReviewCardPage());
            },
          );
        },
      ),
    );
  }
}
