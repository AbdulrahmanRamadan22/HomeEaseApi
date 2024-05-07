// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerStepThreeContractService extends StatelessWidget {
  DateTime selectedDate = DateTime.now();

  ContainerStepThreeContractService({super.key, required this.address});

  final address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CardAddressLocation(
        //   subtitle: 'Please add Your address'.tr(),
        //   title: 'your location'.tr(),
        //   imagebackground: 'assets/images/Ellipse 117.png',
        //   foregroundImage: 'assets/images/Pin_duotone_line.png',
        // ),
        SizedBox(
          height: 8.h,
        ),
        Text('Address'.tr(), style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            controller: address,
            keyboardType: TextInputType.text,
            hintText: 'Enter your address'.tr(),
            backgroundColor: ColorsApp.white,
            validator: (value) {
              if (value!.isEmpty ||
                  value.length < 3 ||
                  AppRegex.isText(value) == false) {
                return 'Please Enter valid address'.tr();
              }
              return null;
            }),
        SizedBox(
          height: 11.h,
        ),
        Text('Choose Date & Time'.tr(), style: TextStyles.font18Black700),
        SizedBox(
          height: 18.h,
        ),
        DatePicker(
          DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: ColorsApp.mainGreen,
          selectedTextColor: Colors.white,
          dateTextStyle: TextStyles.font28Black700,
          dayTextStyle: TextStyles.font10Bgray500,
          monthTextStyle: TextStyles.font16Black700,
          onDateChange: (date) {
            selectedDate = date;
          },
        ),
        SizedBox(
          height: 32.h,
        ),
      ],
    );
  }
}
