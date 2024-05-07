import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/orderdetalis/ui/widget/custom_screen_order_detlis.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/card_address_location.dart';

class OrderDetalis extends StatelessWidget {
  const OrderDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Order Detalis', style: TextStyles.font18Black700),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        child: const CustomScreenOrderDetalis(
          nameorder: 'Hourly Cleaning',
          dataOforder: '22/7/2020',
          codeOforder: '25ds458126fs5dha',
          companyname: 'United Group Company',
          detliasorder: '1 Filipino worker under contract',
          priceorder: '2500 SR',
          tax: '250 SR',
          discount: '100 SR',
          totalprice: '2650 SR',
        ),
      ),
    );
  }
}
