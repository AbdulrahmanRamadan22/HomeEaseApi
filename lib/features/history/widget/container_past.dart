// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/history/widget/container_detiles_past.dart';

class NestedTabBarPast extends StatelessWidget {
  const NestedTabBarPast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 23.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Container_detiles_past(
              backgroundbutton: ColorsApp.mainGreen,
              namebutton: 'Done',
              contracttext: '25ds458126fs5dha',
              image: 'assets/images/Ellipse 131 (1).png',
              companyname: 'United Group Company',
              ratestar: '⭐',
              date: '22/7/2022',
              contractname: '1 Filipino worker under contract',
              numberprice: '1500',
              pricetext: 'Price',
            ),
            SizedBox(
              height: 12.h,
            ),
            Container_detiles_past(
              backgroundbutton: ColorsApp.red,
              namebutton: 'Cancel',
              contracttext: '25ds458126fs5dha',
              image: 'assets/images/Ellipse 131 (1).png',
              companyname: 'United Group Company',
              ratestar: '⭐',
              date: '22/7/2022',
              contractname: '1 Filipino worker under contract',
              numberprice: '1500',
              pricetext: 'Price',
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }
}
