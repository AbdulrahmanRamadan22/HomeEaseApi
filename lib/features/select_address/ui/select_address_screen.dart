import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/select_address/ui/widget/card_select_address.dart';
import 'package:easy_localization/easy_localization.dart';

class SelectAddress extends StatelessWidget {
  const SelectAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Select Address'.tr(), style: TextStyles.font18Black700),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 26.h,
        ),
        child: Column(
          children: [
            const CardSelectAddress(
              imagebackground: 'assets/images/Ellipse 117.png',
              imageforground: 'assets/images/Pin_duotone_line.png',
              textCity: 'City',
              textNameCity: 'Riyadh',
              textCityRegion: 'region',
              textNameRegion: 'Alexander Language School',
              textStreet: 'Street',
              textAddressStreet: 'Non',
              textBuilding: 'Building',
              textNameBuilding: '2 Floor',
            ),
            SizedBox(
              height: 24.h,
            ),
            const CardSelectAddress(
              imagebackground: 'assets/images/Ellipse 117.png',
              imageforground: 'assets/images/Pin_duotone_line.png',
              textCity: 'City',
              textNameCity: 'Riyadh',
              textCityRegion: 'region',
              textNameRegion: 'Alexander Language School',
              textStreet: 'Street',
              textAddressStreet: 'Non',
              textBuilding: 'Building',
              textNameBuilding: '2 Floor',
            ),
            SizedBox(
              height: 24.h,
            ),
            const CardSelectAddress(
              imagebackground: 'assets/images/Ellipse 117.png',
              imageforground: 'assets/images/Pin_duotone_line.png',
              textCity: 'City',
              textNameCity: 'Riyadh',
              textCityRegion: 'region',
              textNameRegion: 'Alexander Language School',
              textStreet: 'Street',
              textAddressStreet: 'Non',
              textBuilding: 'Building',
              textNameBuilding: '2 Floor',
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {},
              text: 'Select'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
