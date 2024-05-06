import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:easy_localization/easy_localization.dart';



import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/translations/locale_keys.dart';

Widget cardLocation() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 28.0.h),
    child: Card(
      margin: EdgeInsets.zero,
      color: ColorsApp.darkGreen,
      child: ListTile(
        leading: SvgPicture.asset("assets/svgs/location_logo.svg"),
        title: Text(
          LocaleKeys.yourLocation.tr(),
          // "your location".tr(),
          style: TextStyles.font10whiteOpacity500,
        ),
        subtitle:
            Text(LocaleKeys.yourLocation.tr(),
              // "your location".tr(), 
              style: TextStyles.font12whiteOpacity700),
      ),
    ),
  );
}
