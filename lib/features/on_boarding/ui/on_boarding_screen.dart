// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_Button.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:home_ease/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:home_ease/features/on_boarding/ui/widgets/build_on_boardingItem.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/translations/locale_keys.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  

  final PageController _pageController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: TextButton(
              child: Text(
                LocaleKeys.skip.tr(),
                // "Skip".tr(),
                style: TextStyles.font18yallow700,
              ),
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.homeLayout,
                  predicate: (route) => false,
                );

                CacheHelper.saveData(key: "onBoarding", value: true);
              },
            ),
          )
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                    // CacheHelper.saveData(key: "onBoarding", value: isLast);
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => BuildOnBoardingItem(
                onBoardingModel: boarding[index],
              ),
              itemCount: boarding.length,
            ),
          ),
          SmoothPageIndicator(
              controller: _pageController, // PageController
              count: boarding.length,
              effect: ExpandingDotsEffect(
                dotColor: ColorsApp.gray,
                activeDotColor: ColorsApp.yallow,
                dotHeight: 10.h,
                expansionFactor: 4,
                dotWidth: 10.w,
                spacing: 5.0.w,
              ), // your preferred effect
              onDotClicked: (index) {}),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 52.h),
            child: CustomButton(
              radius: 16.0,
              text: isLast ? LocaleKeys.Enter.tr() : LocaleKeys.next.tr(),
              //  "Enter".tr() : "Next".tr(),
              onPressed: () {
                if (isLast) {
                  context.pushNamedAndRemoveUntil(
                    Routes.loginScreen,
                    predicate: (route) => false,
                  );
                  CacheHelper.saveData(key: "onBoarding", value: true);
                } else {
                  _pageController.nextPage(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 750),
                  );
                }
              },
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
