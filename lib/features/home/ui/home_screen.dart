// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/home/ui/widgets/card_location.dart';
import 'package:home_ease/features/home/ui/widgets/logo_and_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/translations/locale_keys.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/notifications.png",
        ),
        centerTitle: true,
        title: logoAndText(),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.search,
        //         size: 30,
        //       )),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppTextFormField(
                //   hintText: "Search".tr(),
                //   validator: (p0) {},
                //   backgroundColor: ColorsApp.white,
                //   suffixIcon: const Icon(
                //     Icons.search,
                //     size: 30,
                //   ),
                // ),
                SizedBox(
                  height: 34.h,
                ),
                // goodMorningName(),
                // SizedBox(
                //   height: 12.h,
                // ),
                Text(
                  LocaleKeys.findYourHomeServiceNeedAHelpingHandToday.tr(),
                  // LocaleKeys.FindYourHomeServiceNeedAHelpingHandToday.tr(),
                  // "Find your home service \nNeed a helping hand today?".tr(),
                  style: TextStyles.font24Black700,
                ),
                cardLocation(),
                Image.asset("assets/images/banner1.png"),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  children: [
                    Text(
                      LocaleKeys.OurServices.tr(),
                      // "Our services".tr(),
                      style: TextStyles.font18Black700,
                    ),
                    const Spacer(),
                    Text(
                      LocaleKeys.SeeALL.tr(),
                      // "See ALL".tr(),
                      style: TextStyles.font12mainGreen700,
                    ),
                  ],
                ),

// BuildGridView(
//                         itemCount:10,
//                         itemBuilder: (context, index) {
//                           return BuildCategoryItem(
//                             onTap: () {
//                               context.pushNamed(
//                                 Routes.hourlyCleanScreen,
//                               );
//                             },
//                             // category: category[index],
//                           );
//                         },
//                       ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
