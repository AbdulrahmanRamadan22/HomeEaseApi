import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';

void showSnackBar(BuildContext context,
    {required String content, required Color backgroundColor}) {
  final snackBar = SnackBar(
    margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
    content: Text(
      content,
      textAlign: TextAlign.center,
    ),
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 3),
    backgroundColor: backgroundColor,
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: ColorsApp.white, width: 1),
      borderRadius: BorderRadius.circular(16.0.r),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}



    // ScaffoldMessenger.of(context).showSnackBar(
    //           SnackBar(
    //             margin = EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
    //             behavior = SnackBarBehavior.floating,
    //             content = Text(
    //               error.toString(),
    //               textAlign: TextAlign.center,
    //             ),
    //             backgroundColor = Colors.red,
    //             duration = const Duration(seconds: 5),
    //             shape = RoundedRectangleBorder(
    //               side: const BorderSide(color: ColorsApp.white, width: 1),
    //               borderRadius: BorderRadius.circular(16.0),
    //             ),
    //           ),
    //         );