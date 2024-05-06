// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class CardDetils extends StatelessWidget {
  const CardDetils({
    Key? key,
    this.imageIcon,
    this.textStar,
    required this.subtitleText1,
    required this.subtitleText2,
    required this.priceName,
    required this.priceNumber,
    this.imagecity,
    required this.cityName,
    this.imageHourlyclean,
    required this.hourlycleanText,
    required this.hour,
  }) : super(key: key);
  final String? imageIcon;
  final String? textStar;
  final String subtitleText1;
  final String subtitleText2;
  final String priceName;
  final String priceNumber;
  final String? imagecity;
  final String cityName;
  final String? imageHourlyclean;
  final String hourlycleanText;
  final String hour;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(imageIcon!),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'United Group Company',
                      style: TextStyles.font16Black700,
                    ),
                    Row(
                      children: [
                        Text(textStar!),
                        Text(textStar!),
                        Text(textStar!),
                        Text(textStar!),
                        Text(textStar!),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitleText1,
                      style: TextStyles.font10Bgray500,
                    ),
                    Text(
                      subtitleText2,
                      style: TextStyles.font10Bgray500,
                    ),
                    SizedBox(height: 12.h),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                Column(
                  children: [
                    Text(priceName, style: TextStyles.font14Bgray500),
                    Text(priceNumber, style: TextStyles.font18Black700),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(imagecity!),
                SizedBox(
                  width: 8.w,
                ),
                Text(cityName, style: TextStyles.font14Black500),
                const Spacer(),
                Image.asset(imageHourlyclean!),
                SizedBox(
                  width: 8.w,
                ),
                Text(hourlycleanText),
                const Spacer(),
                const Icon(Icons.hourglass_bottom_outlined),
                const Text('4hour')
              ],
            )
          ],
        ),
      ),
    );
  }
}
