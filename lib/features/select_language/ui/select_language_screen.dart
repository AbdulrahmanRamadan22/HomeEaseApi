import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_Button.dart';
import 'package:home_ease/features/select_language/ui/widgets/check_box.dart';
import 'package:home_ease/features/select_language/ui/widgets/radio_list_tile.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/translations/locale_keys.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: depend_on_referenced_packages

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  int selectedOption = 0;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: ListView(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/svgs/logo_and_name.svg",
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  width: 320.w,
                  child: Text(
                    LocaleKeys.FindYourHomeService.tr(),
                    style: TextStyles.font34Black700,
                  ),
                ),
                SizedBox(
                  height: 58.h,
                ),
                Text(
                  LocaleKeys.selectLanguage.tr(),
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                MyRadioListTile(
                    titleText: LocaleKeys.English.tr(),
                    value: 1,
                    selectedOption: selectedOption,
                    onChanged: (value) async {
                      setState(() {
                        selectedOption = value!;
                        log(selectedOption.toString());
                      });
                      await context.setLocale(const Locale('en'));
                    }),
                const Divider(
                  endIndent: 10,
                ),
                MyRadioListTile(
                    titleText: LocaleKeys.Arabic.tr(),
                    value: 2,
                    selectedOption: selectedOption,
                    onChanged: (value) async {
                      setState(() {
                        selectedOption = value!;

                        log(selectedOption.toString());
                      });
                      await context.setLocale(const Locale('ar'));
                    }),
                SizedBox(
                  height: 18.h,
                ),
                MyCheckboxListTile(
                  isChecked: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 26.h,
                ),
                CustomButton(
                  radius: 16.0,
                  text: LocaleKeys.Enter.tr(),
                  onPressed: () {
                    context.pushNamed(Routes.onBoardingScreen);
                    CacheHelper.saveData(
                        key: "selectLanguageScreen", value: true);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
