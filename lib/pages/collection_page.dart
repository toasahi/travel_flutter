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
                SvgPicture.asset(
                  'assets/svg_images/collectionHeader.svg',
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 16.h),
                Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF1BA0A0),
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/svg_images/collectionButton.svg',
                  ),
                ),
                Container(
                  height: 552.h,
                  width: 375.w,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    children: [
                      SizedBox(height: 24.h),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 16),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 16),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 16),
                      SvgPicture.asset(
                        'assets/svg_images/collectionFrame.svg',
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 16),
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
