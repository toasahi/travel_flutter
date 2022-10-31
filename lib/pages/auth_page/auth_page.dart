import 'package:flutter/material.dart';
import 'package:gacha_travel/components/_components.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: const [
          GachaTravelAppBar(
            title: "ログイン",
          ),
        ],
      ),
    ));
  }
}
