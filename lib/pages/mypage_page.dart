import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gacha_travel/importer.dart';

class MypagePage extends StatelessWidget {
  const MypagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            const GachaTravelBottomNav(label: "mypage"),
          ],
        ),
      ),
    );
  }
}
