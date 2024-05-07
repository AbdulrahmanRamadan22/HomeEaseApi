import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/card_address_location.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Address'.tr(),
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 38,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardAddressLocation(
              imagebackground: 'assets/images/Ellipse 117.png',
              foregroundImage: 'assets/images/Pin_duotone_line.png',
              title: 'your location'.tr(),
              subtitle: 'Please add address'.tr(),
            ),
            SizedBox(height: 32.h),
            Text(
              'City'.tr(),
              style: TextStyles.font16Black600,
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
              hintText: 'Enter your city'.tr(),
              validator: (p0) => () {},
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_downward_outlined,
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              'Region'.tr(),
              style: TextStyles.font16Black600,
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
              hintText: 'Enter your city'.tr(),
              validator: (p0) => () {},
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              'street'.tr(),
              style: TextStyles.font16Black600,
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
              hintText: 'Add Your Street'.tr(),
              validator: (p0) => () {},
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              'Building'.tr(),
              style: TextStyles.font16Black600,
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
              hintText: 'Add Number of Buliding'.tr(),
              validator: (p0) => () {},
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onPressed: () {},
              text: 'Add'.tr(),
            )
          ],
        ),
      ),
    );
  }
}
