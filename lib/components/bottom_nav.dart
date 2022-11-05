import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
                CustomPageRoute(const GachaHomePage()),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    label == "gacha"
                        ? 'assets/svg_images/bottomGachaRed.svg'
                        : 'assets/svg_images/bottomGacha.svg',
                    width: 34.w,
                    height: 34.h,
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
                CustomPageRoute(const CollectionPage()),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    label == "collection"
                        ? 'assets/svg_images/bottomCollectionRed.svg'
                        : 'assets/svg_images/bottomCollection.svg',
                    width: 34.w,
                    height: 34.h,
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
                CustomPageRoute(const MypagePage()),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    label == "mypage"
                        ? 'assets/svg_images/bottomMypageRed.svg'
                        : 'assets/svg_images/bottomMypage.svg',
                    width: 34.w,
                    height: 34.h,
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

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.white;

  @override
  String? get barrierLabel => null;

  final Widget child;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // ここを変えればいろんなトランジションにできるぞ
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(
        seconds: 0, // 変化にかかる時間を指定
      );
}
