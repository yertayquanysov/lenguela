import 'package:flutter/material.dart';
import 'package:lenguela/features/reader/presentation/pages/view_content_page.dart';

class AddContentPage extends StatelessWidget {
  const AddContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    String passedText = "";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add content"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                maxLines: 40,
                minLines: 10,
                onChanged: (v) => passedText = v,
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 40,
                minLines: 10,
                onChanged: (v) => passedText = v,
              ),
              const SizedBox(height: 10),
              MaterialButton(
                color: Colors.green,
                child: const Text("Save"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ViewContentPage(text: passedText),
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
