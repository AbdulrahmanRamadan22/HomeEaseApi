// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/button_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ContainerStepOne extends StatelessWidget {
  const ContainerStepOne(
      {super.key,
      required this.City,
      required this.Nationality,
      required this.numberOfHours});

  final numberOfHours;

  final Nationality;

  final City;

  // int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Period'.tr(),
          style: TextStyles.font16Black700,
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            ButtonCard(
              onPressed: () {},
              text: 'Morning'.tr(),
              image: 'assets/images/sun_icon.png',
            ),
            const Spacer(),
            ButtonCard(
              onPressed: () {},
              text: 'Night'.tr(),
              image: 'assets/images/Night_icon.png',
            ),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Text('number of Hours'.tr(), style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            controller: numberOfHours,
            keyboardType: TextInputType.number,
            hintText: 'Enter number of hours',
            backgroundColor: ColorsApp.white,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter number of hours'.tr();
              }
              return null;
            }),
        SizedBox(
          height: 21.h,
        ),
        Text('Nationality'.tr(), style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            controller: Nationality,
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
            hintText: 'Enter Nationality'.tr(),
            backgroundColor: ColorsApp.white,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Nationality'.tr();
              }
              return null;
            }),
        SizedBox(
          height: 21.h,
        ),
        Text('City', style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            controller: City,
            hintText: 'Enter City'.tr(),
            backgroundColor: ColorsApp.white,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter City'.tr();
              }
              return null;
            }),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
