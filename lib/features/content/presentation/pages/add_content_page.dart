import 'package:flutter/material.dart';
import 'package:lenguela/core/ext.dart';
import 'package:lenguela/features/content/presentation/pages/view_content_page.dart';

class AddContentPage extends StatelessWidget {
  const AddContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    String passedText = "";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add content"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.toPage(ViewContentPage(text: passedText)),
        label: const Text(
          "Save content",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: (v) => passedText = v,
                decoration: const InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 40,
                minLines: 10,
                onChanged: (v) => passedText = v,
                decoration: const InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 40,
                minLines: 10,
                onChanged: (v) => passedText = v,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.white24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
