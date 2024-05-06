import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class CardNotificationScreen extends StatelessWidget {
  const CardNotificationScreen({
    super.key,
    this.textnotification,
    this.image,
    required this.title,
    required this.subtitle_1,
    required this.subtitle_2,
    required this.trailing,
  });

  final String? textnotification;
  final String? image;
  final String title;
  final String subtitle_1;
  final String subtitle_2;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.h),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsApp.lightGray),
        color: ColorsApp.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18.r),
        ),
      ),
      child: ListTile(
        leading: Image.asset(image!),
        title: Text(
          title.tr(),
        ),
        trailing: Text(trailing, style: TextStyles.font14Bgray500),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle_1.tr(),
              style: TextStyles.font14Bgray500,
            ),
            Text(
              subtitle_2.tr(),
              style: TextStyles.font14Bgray500,
            ),
          ],
        ),
      ),
    );
  }
}
