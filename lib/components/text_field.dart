import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gacha_travel/importer.dart';

class GachaTravelTextField extends StatelessWidget {
  const GachaTravelTextField(
      {Key? key, required this.text, required this.label})
      : super(key: key);

  final String text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.labelTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColors.inputTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
            SvgPicture.asset(
              'assets/svg_images/textfield_arrow.svg',
              height: 12.h,
              width: 12.w,
              fit: BoxFit.scaleDown,
            )
          ],
        ),
        Divider(
          color: AppColors.lineColor,
          thickness: 1.h,
        ),
      ],
    );
  }
}
