import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final String text;
  final Color backGround;
  final dynamic style;
  final Color textColor;
  // bool isUppercase=true,
  final Function() onPressed;

  const CustomButton({
    super.key,
    this.height = 60,
    this.width = double.infinity,
    this.radius = 8.0,
    required this.text,
    this.backGround = ColorsApp.mainGreen,
    this.style,
    required this.onPressed,
    this.textColor = ColorsApp.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(radius.r),
      ),
      width: width.w,
      height: height.h,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
