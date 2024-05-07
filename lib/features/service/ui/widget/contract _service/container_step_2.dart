import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/service/ui/widget/card_detils_step2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerStepTowContractService extends StatelessWidget {
  const ContainerStepTowContractService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fliter'.tr(), style: TextStyles.font16Black700),
        SizedBox(height: 8.h),
        SizedBox(
          height: 28.h,
        ),
        CardDetails(
          imageIcon: 'assets/images/talg131.png',
          textStar: '⭐',
          cityName: 'Egypt'.tr(),
          hour: '4 HOURS'.tr(),
          priceName: 'Price'.tr(),
          priceNumber: '1152'.tr(),
          hourlycleanText: 'Hourly cleaning'.tr(),
          subtitleText1: 'Sed ut perspiciatis unde omnis iste'.tr(),
          subtitleText2: 'natus error sit voluptatem accusantium'.tr(),
          imageHourlyclean: 'assets/images/hour_icon.png',
          imagecity: 'assets/images/city.png',
        ),
        SizedBox(
          height: 8.h,
        ),
        CardDetails(
          imageIcon: 'assets/images/talg131.png',
          textStar: '⭐',
          cityName: 'Egypt'.tr(),
          hour: '4 HOURS'.tr(),
          priceName: 'Price'.tr(),
          priceNumber: '1152'.tr(),
          hourlycleanText: 'Hourly cleaning'.tr(),
          subtitleText1: 'Sed ut perspiciatis unde omnis iste'.tr(),
          subtitleText2: 'natus error sit voluptatem accusantium'.tr(),
          imageHourlyclean: 'assets/images/hour_icon.png',
          imagecity: 'assets/images/city.png',
        ),
        SizedBox(
          height: 40.h,
        ),
      ],
    );
  }
}
