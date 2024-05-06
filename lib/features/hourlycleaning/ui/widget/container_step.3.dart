import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/card_address_location.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerStep3 extends StatelessWidget {
  DateTime selectedDate = DateTime.now();

  ContainerStep3({

    super.key,
    required this.numberOfVisits
  });

  final numberOfVisits ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardAddressLocation(
          subtitle: 'Please add Your address'.tr(),
          title: 'your location'.tr(),
          imagebackground: 'assets/images/Ellipse 117.png',
          foregroundImage: 'assets/images/Pin_duotone_line.png',
        ),
        SizedBox(
          height: 8.h,
        ),
        Text('number of visits'.tr(), style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            controller: numberOfVisits,
            keyboardType: TextInputType.number,
            hintText: 'Enter Number Of Visits',
            backgroundColor: ColorsApp.white, 
            
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Number Of Visits';
              }
              return null;
            }
            ),
        SizedBox(
          height: 11.h,
        ),
        Text('Choose Date & Time'.tr(), style: TextStyles.font18Black700),
        SizedBox(
          height: 18.h,
        ),
        Container(
          child: DatePicker(
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
        ),
        SizedBox(
          height: 32.h,
        ),
        Text(
          'Choose Time'.tr(),
          style: TextStyles.font18Black700,
        ),
        SizedBox(
          height: 24.h,
        ),
        Container(
          color: ColorsApp.white,
          width: double.infinity,
          height: 100,
          child: TimePickerSpinner(
            itemWidth: 50,
            is24HourMode: false,
            normalTextStyle: TextStyles.font16Black700,
            highlightedTextStyle: TextStyles.font24mainGreen700,
            spacing: 5,
            itemHeight: 50,
            isForce2Digits: true,
            onTimeChange: (time) {
              print('Selected time: ${time.hour}:${time.minute}');
            },
          ),
        ),
        

      ],
    );
  }
}
