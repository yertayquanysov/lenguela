import 'package:flutter/material.dart';
import 'package:lenguela/features/account/presentation/widgets/menu_list.dart';
import 'package:lenguela/features/content/presentation/pages/add_content_page.dart';
import 'package:lenguela/features/flashcard/presentation/pages/flashcard_page.dart';
import 'package:lenguela/features/tracker/presentation/pages/tracker_page.dart';
import 'package:lenguela/features/vocabulary/presentation/pages/vocabulary_list_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _pages = [
    const AddContentPage(),
    const VocabularyListPage(),
    const FlashcardPage(),
    const TrackerPage(),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            height: double.infinity,
            color: Colors.orange.withOpacity(0.03),
            child: MenuList(
              onMenuTapped: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),
          Expanded(
            child: _pages[_currentPage],
          ),
        ],
      ),
    );
  }
}
