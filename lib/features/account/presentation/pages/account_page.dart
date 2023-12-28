import 'package:flutter/material.dart';
import 'package:lenguela/features/account/presentation/widgets/menu_list.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            height: double.infinity,
            color: Colors.blueAccent.withOpacity(0.02),
            child: const MenuList(),
          )
        ],
      ),
    );
  }
}
