import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDDEEF2),
              Color(0xFFADE1E9),
              Color(0xFF77DEEC),
            ],
            stops: [
              0.0001,
              0.412285,
              1,
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SvgPicture.asset(
          'assets/svg_images/indexBg.svg',
        ),
      ),
    );
  }
}
