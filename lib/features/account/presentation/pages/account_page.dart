import 'package:flutter/material.dart';
import 'package:lenguela/features/account/presentation/widgets/menu_list.dart';
import 'package:lenguela/features/reader/presentation/pages/content_list_page.dart';
import 'package:lenguela/features/vocabulary/presentation/pages/vocabulary_list_page.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            height: double.infinity,
            color: Colors.blueAccent.withOpacity(0.02),
            child: MenuList(
              onMenuTapped: (int page) {
                _pageController.jumpToPage(page);
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                ContentListPage(),
                VocabularyListPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
