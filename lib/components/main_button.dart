import 'package:flutter/material.dart';

import 'package:gacha_travel/constants/constants.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class GachaTravelMainButton extends StatelessWidget {
  const GachaTravelMainButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(344.w, 48.h),
        backgroundColor: AppColors.mainButtonBgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.15,
          height: 1.2,
          color: AppColors.mainButtonTextColor,
        ),
      ),
    );
  }
}
