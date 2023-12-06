import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lenguela/features/dashboard/presentation/widgets/menu_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yertay Kuanyshov"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.flag),
          ),
          const SizedBox(width: 30),
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 250,
            child: ListView(
              children: const [
                MenuItem(name: 'Content'),
                MenuItem(name: 'Vocabulary'),
                MenuItem(name: 'Books'),
                MenuItem(name: 'Podcast'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.redAccent,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
