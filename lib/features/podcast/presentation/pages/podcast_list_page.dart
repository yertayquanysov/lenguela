import 'package:flutter/material.dart';

class PodcastListPage extends StatelessWidget {
  const PodcastListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Podcast"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemBuilder: (_, idx) {
          return Card(
            elevation: 19,
            child: Stack(
              children: [
                Image.network(
                    "https://yt3.googleusercontent.com/ytc/AIf8zZRCFmMXbdU0jYNd1OSgNYB8DO-DpEWUMtFhgjU8=s900-c-k-c0x00ffffff-no-rj"),
                const Text("Easy Turkish"),
              ],
            ),
          );
        },
      ),
    );
  }
}
