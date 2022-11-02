import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GachaHomePage extends StatelessWidget {
  const GachaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
              'assets/svg_images/gachaHome.svg',
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg_images/appName.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
