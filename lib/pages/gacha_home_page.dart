import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import 'package:gacha_travel/importer.dart';
import 'package:gacha_travel/pages/gacha_detail_page/gacha_detail_page.dart';

class GachaHomePage extends StatelessWidget {
  const GachaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.gradationBgColor1,
                  AppColors.gradationBgColor2,
                  AppColors.gradationBgColor3,
                ],
                stops: [
                  0.0001,
                  0.412285,
                  1,
                ],
              ),
            ),
            child: SvgPicture.asset(
              'assets/svg_images/gachaHome.svg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        SizedBox(width: 72.w),
                        SvgPicture.asset(
                          'assets/svg_images/appName.svg',
                        ),
                        SizedBox(width: 24.w),
                        SizedBox(
                          width: 28.w,
                          height: 28.h,
                          child: const Icon(
                            Icons.settings,
                          ),
                        ),
                        SizedBox(width: 16.w),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      isIos: true,
                      child: const GachaDetailPage(),
                    ),
                  ),
                  child: const Text("ガチャを回す"),
                ),
                const GachaTravelBottomNav(label: "gacha"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
