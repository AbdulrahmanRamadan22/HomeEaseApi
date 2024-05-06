import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/payment/ui/widget/card_payment.dart';
import 'package:easy_localization/easy_localization.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        title: Text('Payment', style: TextStyles.font18Black700),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 58.h, vertical: 43.h),
        child: Column(
          children: [
            CardPayment(
              image_1: 'assets/images/Logo.png',
              text_number: '8700 - XXXX - XXXX - 9830'.tr(),
              image_2: 'assets/images/Color=Gold.png',
              text_name: 'Abdul Aziz Al-Qahtany'.tr(),
              text_day: 'Valid Thru  11/25'.tr(),
            ),
            SizedBox(
              height: 30.h,
            ),
            CardPayment(
              image_1: 'assets/images/visa.png',
              text_number: '8700 - XXXX - XXXX - 9830'.tr(),
              image_2: 'assets/images/Color=Gold.png',
              text_name: 'Abdul Aziz Al-Qahtany'.tr(),
              text_day: 'Valid Thru  11/25'.tr(),
            ),
            const Spacer(),
            CustomButton(
              text: ' + Add Card'.tr(),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
