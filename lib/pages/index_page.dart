import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gacha_travel/pages/gacha_home_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

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
              'assets/svg_images/indexBg.svg',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 176.h),
                  SvgPicture.asset(
                    'assets/svg_images/gacha.svg',
                    width: 254.w,
                    height: 360.h,
                    fit: BoxFit.scaleDown,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SizedBox(
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GachaHomePage(),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg_images/Button2.svg',
                          width: 328.w,
                          height: 80.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
