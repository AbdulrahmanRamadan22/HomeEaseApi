import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account ? '.tr(),
              style: TextStyles.font16Black400,
            ),
            TextSpan(
              text: ' Login'.tr(),
              style: TextStyles.font16Black700,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
            ),
          ],
        ),
      ),
    );
  }
}




//  Padding(
//                 padding: EdgeInsets.symmetric(vertical: 24.h),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Have Account ?',
//                       style: TextStyles.font16Black600,
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         context.pushNamedAndRemoveUntil(Routes.loginScreen,
//                             predicate: (Route<dynamic> route) => false);

//                         // Navigator.pushAndRemoveUntil(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (BuildContext context) =>
//                         //           const LoginScreen()),
//                         //   ModalRoute.withName(
//                         //       'loginscreens'), // Replace '/home' with the route name you want to navigate until
//                         // );
//                       },
//                       child: Text(
//                         'Sign in',
//                         style: TextStyles.font16Black700,
//                       ),
//                     ),
//                     const RegisterBlocListener(),
//                   ],
//                 ),
//               ),