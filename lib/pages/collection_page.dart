import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gacha_travel/importer.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/collectionBg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 375.w,
                  height: 120.h,
                  child: SvgPicture.asset(
                    'assets/svg_images/collectionHeader.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.collectionButtonShadowColor,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/svg_images/collectionButton.svg',
                    height: 40.h,
                    width: 240.w,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  height: 554.h,
                  width: 375.w,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    children: [
                      SizedBox(height: 24.h),
                      Stack(
                        children: [
                          SvgPicture.asset(
                            'assets/svg_images/collectionFrame.svg',
                            height: 152.h,
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        height: 152.h,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(height: 16.h),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        height: 152.h,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(height: 16.h),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        height: 152.h,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                )
              ],
            ),
            const GachaTravelBottomNav(label: "collection"),
          ],
        ),
      ),
    );
  }
}
