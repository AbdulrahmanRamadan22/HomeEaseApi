// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class CardPayment extends StatelessWidget {
  const CardPayment({
    Key? key,
    this.image_1,
    this.image_2,
    required this.text_number,
    required this.text_name,
    required this.text_day,
  }) : super(key: key);
  final String? image_1;
  final String? image_2;
  final String text_number;
  final String text_name;
  final String text_day;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 30.h,
      ),
      width: double.infinity,
      // height: 158.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(19.r),
        ),
        gradient: LinearGradient(
          colors: [
            ColorsApp.mintgreendark,
            ColorsApp.mintgreenlight,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                image_1!,
              ),
              const Spacer(),
              Image.asset(
                image_2!,
              ),
            ],
          ),
          SizedBox(
            height: 22.1.h,
          ),
          Text(text_number, style: TextStyles.font14white700),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Text(
                text_name,
                style: TextStyles.font12blackOpacity700,
              ),
              const Spacer(),
              Text(text_day, style: TextStyles.font10white500)
            ],
          )
        ],
      ),
    );
  }
}
