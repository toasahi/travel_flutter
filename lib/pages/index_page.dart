import 'package:flutter/material.dart';

import 'package:gacha_travel/components/_components.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: false,
      child: Column(
        children: const [
          GachaTravelAppBar(title: "index"),
        ],
      ),
    ));
  }
}
