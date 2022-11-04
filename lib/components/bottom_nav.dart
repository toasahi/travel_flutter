import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gacha_travel/pages/index_page.dart';
import 'package:gacha_travel/constants/colors.dart';

class GachaTravelBottomNav extends StatelessWidget {
  const GachaTravelBottomNav({Key? key, required this.selectedIndex})
      : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
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
                  SvgPicture.asset('assets/svg_images/bottomGacha.svg'),
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
                SvgPicture.asset('assets/svg_images/bottomCollection.svg'),
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
                SvgPicture.asset('assets/svg_images/bottomMypage.svg'),
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
    );
  }
}
