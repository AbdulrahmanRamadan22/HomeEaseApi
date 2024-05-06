import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 250.h,
                width: double.infinity,
                child: SvgPicture.asset("assets/svgs/Sent_email.svg")),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                'abod@gmail.cpm',
                style: TextStyles.font16Black600,
              ),
            ),
            Text(
              "Password Reset Email Sent",
              style: TextStyles.font24Black700,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: Text(
                'Your Account Security is Our Priority! We\'ve Sent You a Secure Link to safely Change Your Password and Keep Your Account Protected.',
                style: TextStyles.font14Black500,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: CustomButton(
                radius: 12.r,
                onPressed: () {
                  context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (route) => false);
                },
                text: "Done",
              ),
            ),
            CustomButton(
              backGround: ColorsApp.white,
              onPressed: () {
                context.pop();
              },
              text: "Resend Email",
              textColor: ColorsApp.mainGreen,
            ),
          ],
        ),
      ),
    );
  }
}
