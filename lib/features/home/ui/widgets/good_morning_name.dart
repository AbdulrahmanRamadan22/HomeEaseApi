import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';

import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/translations/locale_keys.dart';

RichText goodMorningName() {
  // var fullName= CacheHelper.getData(key: 'fullName');

  return RichText(
    text: TextSpan(
        text: LocaleKeys.GoodMorning.tr(),
        // 'Good Morning '.tr(),
        style: TextStyles.font14Black400,
        children: [
          TextSpan(
            // text: fullName,

            text: "Abdelrahman".tr(),

            // LocaleKeys.Abdelrahman.tr(),

            //  'Abdelrahman'.tr(),
            style: TextStyles.font14yallow500,
          )
        ]),
  );
}
