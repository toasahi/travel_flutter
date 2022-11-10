import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gacha_travel/importer.dart';
import 'package:gacha_travel/pages/gacha_home_page.dart';

class GachaDetailPage extends StatefulWidget {
  const GachaDetailPage({super.key});

  @override
  State<GachaDetailPage> createState() => _GachaDetailPage();
}

class _GachaDetailPage extends State<GachaDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            const GachaTravelAppBar(title: "ガチャを回す", page: GachaHomePage()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  SizedBox(height: 24.h),
                  Container(
                    width: 336.w,
                    height: 272.h,
                    decoration: BoxDecoration(
                      color: AppColors.cardBgColor,
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24.w, 24.h, 40.w, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          GachaTravelTextField(text: _selectedItem, label: "人数"),
                          const GachaTravelTextField(text: "1日", label: "宿泊日数"),
                          const GachaTravelTextField(text: "夏", label: "旅行名"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 48.h),
                  Container(
                    width: 331.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: AppColors.cardBgColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 16.h, 24.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1人1回5,000円",
                            style: TextStyle(
                              color: AppColors.labelTextColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "合計",
                                style: TextStyle(
                                  color: AppColors.inputTextColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                      color: AppColors.inputTextColor,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.sp,
                                    ),
                                    children: [
                                      const TextSpan(text: "5,000"),
                                      TextSpan(
                                          text: "円",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                          )),
                                    ]),
                              ),
                            ],
                          ),
                          Divider(
                            color: AppColors.lineColor,
                            thickness: 1.h,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 56.h),
                  ElevatedButton(
                    onPressed: () => _showModalPicker(context),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(336.w, 80.h),
                      backgroundColor: AppColors.mainButtonBgColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.r)),
                      ),
                    ),
                    child: const Text(
                      "ガチャを回す",
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

  void _showModalPicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 224.h,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: Text(
                        "キャンセル",
                        style: TextStyle(
                          color: AppColors.cancelTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    CupertinoButton(
                      child: Text(
                        "決定",
                        style: TextStyle(
                          color: AppColors.decisionTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120.h,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CupertinoPicker(
                    itemExtent: 40.h,
                    onSelectedItemChanged: _onSelectedItemChanged,
                    children: _items.map(_pickerItem).toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _pickerItem(String str) {
    return Text(
      str,
      style: TextStyle(fontSize: 24.sp),
    );
  }

  String _selectedItem = '1人';

  final List<String> _items = [
    '1人',
    '2人',
    '3人',
    '4人',
  ];

  void _onSelectedItemChanged(int index) {
    setState(() {
      _selectedItem = _items[index];
    });
  }
}
