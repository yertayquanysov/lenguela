import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          Expanded(
            child: TextFormField(
              maxLines: 40,
              minLines: 10,
              onChanged: (v) => passedText = v,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white54,
              ),
            ),
          ),
          const SizedBox(height: 10),
          CupertinoButton(
            color: Colors.green,
            child: const Text("Translate"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ViewContentPage(text: passedText),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
