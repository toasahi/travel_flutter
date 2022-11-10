import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import 'package:gacha_travel/importer.dart';
import 'package:gacha_travel/pages/collection_page.dart';
import 'package:gacha_travel/pages/gacha_home_page.dart';
import 'package:gacha_travel/pages/mypage_page.dart';

class GachaTravelBottomNav extends StatelessWidget {
  const GachaTravelBottomNav({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bottomNavigatorBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(37.r),
          topRight: Radius.circular(37.r),
        ),
      ),
      width: double.infinity,
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: const GachaHomePage(),
                  duration: const Duration(milliseconds: 0),
                ),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    label == "gacha"
                        ? 'assets/svg_images/bottomGachaRed.svg'
                        : 'assets/svg_images/bottomGacha.svg',
                    width: 34.w,
                    height: 34.h,
                    fit: BoxFit.scaleDown,
                  ),
                  Text(
                    "ガチャ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9.sp,
                      color: label == "gacha"
                          ? AppColors.bottomNavigatorSelectedColor
                          : AppColors.bottomNavigatorTextColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: const CollectionPage(),
                  duration: const Duration(milliseconds: 0),
                ),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    label == "collection"
                        ? 'assets/svg_images/bottomCollectionRed.svg'
                        : 'assets/svg_images/bottomCollection.svg',
                    width: 34.w,
                    height: 34.h,
                    fit: BoxFit.scaleDown,
                  ),
                  Text(
                    "コレクション",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9.sp,
                      color: label == "collection"
                          ? AppColors.bottomNavigatorSelectedColor
                          : AppColors.bottomNavigatorTextColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const MypagePage(),
                    duration: const Duration(milliseconds: 0),
                  ),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    label == "mypage"
                        ? 'assets/svg_images/bottomMypageRed.svg'
                        : 'assets/svg_images/bottomMypage.svg',
                    width: 34.w,
                    height: 34.h,
                    fit: BoxFit.scaleDown,
                  ),
                  Text(
                    "マイページ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9.sp,
                      color: label == "mypage"
                          ? AppColors.bottomNavigatorSelectedColor
                          : AppColors.bottomNavigatorTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
