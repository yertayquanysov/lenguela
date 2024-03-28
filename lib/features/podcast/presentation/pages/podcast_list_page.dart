import 'package:flutter/material.dart';

class PodcastListPage extends StatelessWidget {
  const PodcastListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Podcast"),
      ),
      body: ListView.builder(
        itemBuilder: (_, idx) {
          return ListTile(
            leading: Image.network(
              "https://cdn-icons-png.flaticon.com/512/4628/4628673.png",
              width: 50,
            ),
            title: const Text("Easy Turkish"),
            onTap: () {},
            contentPadding: const EdgeInsets.all(10),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
