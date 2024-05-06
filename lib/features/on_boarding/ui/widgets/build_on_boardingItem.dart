// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildOnBoardingItem extends StatelessWidget {
  final OnBoardingModel onBoardingModel;
  const BuildOnBoardingItem({super.key, required this.onBoardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: screenHeight * 0.05), // adjust height based on screen height

        SvgPicture.asset(onBoardingModel.image),
        SizedBox(height: 30.h),

        Text(
          onBoardingModel.title,
          style: TextStyles.font34Black700,
        ),
        SizedBox(height: 24.h),
        // adjust height based on screen height
        SizedBox(
          width: 305.w,
          child: Text(
            
            textAlign: TextAlign.center,
            onBoardingModel.body,
            // textAlign: TextAlign.center,
            style: TextStyles.font16Black500WithOpacity,
          ),
        ),
      ],
    );
  }
}
