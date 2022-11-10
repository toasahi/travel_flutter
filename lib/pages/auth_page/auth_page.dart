import 'package:flutter/material.dart';

import 'package:gacha_travel/importer.dart';
import 'package:gacha_travel/pages/index_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: const [
            GachaTravelAppBar(title: "ログイン",page: IndexPage(),),
          ],
        ),
      ),
    );
  }
}
