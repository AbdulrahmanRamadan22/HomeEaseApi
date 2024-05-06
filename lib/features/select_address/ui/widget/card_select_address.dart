// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:easy_localization/easy_localization.dart';

class CardSelectAddress extends StatelessWidget {
  const CardSelectAddress({
    Key? key,
    this.imagebackground,
    this.imageforground,
    required this.textCity,
    required this.textNameCity,
    required this.textNameRegion,
    required this.textCityRegion,
    required this.textStreet,
    required this.textAddressStreet,
    required this.textBuilding,
    required this.textNameBuilding,
  }) : super(key: key);
  final String? imagebackground;
  final String? imageforground;
  final String textCity;
  final String textNameCity;
  final String textNameRegion;
  final String textCityRegion;
  final String textStreet;
  final String textAddressStreet;
  final String textBuilding;
  final String textNameBuilding;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorsApp.mainGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    imagebackground!,
                  ),
                  Image.asset(imageforground!)
                ],
              ),
              SizedBox(
                width: 11.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(textCity.tr(), style: TextStyles.font10white500),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(textCityRegion.tr(), style: TextStyles.font12white700),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text(textCityRegion.tr(), style: TextStyles.font10white500),
                  const SizedBox(),
                  Text(textNameRegion.tr(), style: TextStyles.font12white700),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(textStreet.tr(), style: TextStyles.font10white500),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(textAddressStreet.tr(), style: TextStyles.font12white700),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text(textBuilding.tr(), style: TextStyles.font10white500),
                  Text(textNameBuilding.tr(), style: TextStyles.font12white700),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
              SizedBox(
                width: 44.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
