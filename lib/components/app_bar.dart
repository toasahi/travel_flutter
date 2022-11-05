import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gacha_travel/pages/index_page.dart';
import 'package:gacha_travel/importer.dart';

class GachaTravelAppBar extends StatelessWidget {
  const GachaTravelAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88.h,
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 48.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IndexPage()))
                  },
                  child: SvgPicture.asset('assets/svg_images/arrow.svg'),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.mainButtonTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 32.w)
              ],
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
