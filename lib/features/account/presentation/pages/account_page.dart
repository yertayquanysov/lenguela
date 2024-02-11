import 'package:flutter/material.dart';
import 'package:lenguela/features/account/presentation/widgets/menu_list.dart';
import 'package:lenguela/features/vocabulary/presentation/pages/vocabulary_list_page.dart';

import '../../../content/presentation/pages/content_list_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _pages = [
    const ContentListPage(),
    const VocabularyListPage(),
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
