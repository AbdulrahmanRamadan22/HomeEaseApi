// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSocial extends StatelessWidget {
  final String text;
  final String image;
 final void Function()? onTap;

  const CardSocial({
    Key? key,
    required this.text,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: SizedBox(
        height: 74.h,
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffDFDFDF), width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 0,
          color: ColorsApp.lightGreen,
          margin: const EdgeInsets.only(top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 32,
                height: 32,
              ),
              SizedBox(width: 12.w),
              Text(
                text,
                style: TextStyles.font18Black700,
              )
            ],
          ),
        ),
      ),
    );
  }
}
