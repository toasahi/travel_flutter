import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gacha_travel/constants.dart';
import 'package:gacha_travel/pages/index_page.dart';

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
            child: SvgPicture.asset(
              'assets/svg_images/gachaHome.svg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
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
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.bottomNavigatorBgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(37),
                      topRight: Radius.circular(37),
                    ),
                  ),
                  width: double.infinity,
                  height: 80.h,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IndexPage(),
                            ),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                'assets/svg_images/bottomGacha.svg',
                                width: 34.w,
                                height: 34.h,
                              ),
                              Text(
                                "ガチャ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9.sp,
                                  color: AppColors.bottomNavigatorSelectedColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/svg_images/bottomCollection.svg',
                              width: 34.w,
                              height: 34.h,
                            ),
                            Text(
                              "コレクション",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp,
                                color: AppColors.bottomNavigatorTextColor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/svg_images/bottomMypage.svg',
                              width: 34.w,
                              height: 34.h,
                            ),
                            Text(
                              "マイページ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp,
                                color: AppColors.bottomNavigatorTextColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
