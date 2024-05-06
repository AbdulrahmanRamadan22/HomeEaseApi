import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/translations/locale_keys.dart';


Row logoAndText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset("assets/svgs/logo.svg"),
      SizedBox(width: 10.w),
      Text(
        LocaleKeys.HomeEase.tr(),
        // "HomeEase".tr(),
        style: TextStyles.font24Black700,
      ),
    ],
  );
}
