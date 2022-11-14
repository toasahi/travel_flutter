import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import 'package:gacha_travel/importer.dart';

class GachaTravelAppBar extends StatelessWidget {
  const GachaTravelAppBar({Key? key, required this.title, required this.page})
      : super(key: key);

  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 96.h,
      decoration: const BoxDecoration(
        color: AppColors.appBarBGColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.appBarShadowColor,
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 56.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        isIos: true,
                        child: page,
                        // duration: const Duration(milliseconds: 300),
                      ),
                    )
                  },
                  child: SvgPicture.asset(
                    'assets/svg_images/arrow.svg',
                    width: 32.w,
                    height: 32.h,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 120.w),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.mainButtonTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
