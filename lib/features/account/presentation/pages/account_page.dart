import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenguela/features/account/presentation/widgets/menu_list.dart';
import 'package:lenguela/features/content/presentation/pages/add_content_page.dart';
import 'package:lenguela/features/flashcard/presentation/pages/flashcard_page.dart';
import 'package:lenguela/features/flashcard/presentation/pages/review_flashcard_page.dart';
import 'package:lenguela/features/tracker/presentation/pages/tracker_page.dart';

import '../../../podcast/presentation/pages/podcast_list_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _pages = [
    const AddContentPage(),
    const TrackerPage(),
    const PodcastListPage(),
    const FlashcardPage(),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 300,
            height: double.infinity,
            child: MenuList(
              onMenuTapped: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),
          const Expanded(
            child: ReviewCardPage(),
          ),
        ],
      ),
    );
  }
}
