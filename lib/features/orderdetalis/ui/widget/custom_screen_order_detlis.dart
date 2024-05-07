// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/card_address_location.dart';
import 'package:home_ease/core/widgets/custom_button.dart';

class CustomScreenOrderDetalis extends StatelessWidget {
  const CustomScreenOrderDetalis({
    Key? key,
    required this.nameorder,
    required this.dataOforder,
    required this.codeOforder,
    required this.companyname,
    required this.detliasorder,
    required this.priceorder,
    required this.tax,
    required this.discount,
    required this.totalprice,
  }) : super(key: key);

  final String nameorder;
  final String dataOforder;
  final String codeOforder;
  final String companyname;
  final String detliasorder;
  // string of price
  final String priceorder;
  final String tax;
  final String discount;
  final String totalprice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Order Detalis', style: TextStyles.font18Black700),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Name of Order', style: TextStyles.font14Bgray500),
            const Spacer(),
            Text('Date of Order', style: TextStyles.font14Bgray500)
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Text(nameorder, style: TextStyles.font14Black700),
            const Spacer(),
            Text(dataOforder, style: TextStyles.font14Black700)
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Code of Order', style: TextStyles.font14Bgray500),
            const Spacer(),
            Text('Company', style: TextStyles.font14Bgray500)
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(codeOforder, style: TextStyles.font14Black700),
            const Spacer(),
            Text(companyname, style: TextStyles.font14Black700)
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Detalis Order', style: TextStyles.font14Bgray500),
            const Spacer(),
            Text('Order States', style: TextStyles.font14Bgray500)
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(detliasorder, style: TextStyles.font14Black700),
            const Spacer(),
            CustomButton(
              width: 90.w,
              height: 45.h,
              backGround: ColorsApp.mainGreen,
              radius: 30.r,
              text: 'Done',
              onPressed: () {},
            )
          ],
        ),
        SizedBox(
          height: 31.h,
        ),
        const CardAddressLocation(
          title: 'your  Order location',
          subtitle: 'Jiddah Alexander Language School , ALS',
          imagebackground: 'assets/images/Ellipse 117.png',
          foregroundImage: 'assets/images/Pin_duotone_line.png',
        ),
        SizedBox(
          height: 34.h,
        ),
        Text('Price', style: TextStyles.font18Black700),
        const SizedBox(
          height: 18,
        ),
        Container(
          width: double.infinity,
          height: 221.h,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
              ),
            ],
            color: ColorsApp.lightGreen,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('price order', style: TextStyles.font14Black500),
                    const Spacer(),
                    Text(priceorder, style: TextStyles.font16Black600)
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Tax', style: TextStyles.font14Black500),
                    const Spacer(),
                    Text(tax, style: TextStyles.font16Black600)
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('discount', style: TextStyles.font14Bgreengray500),
                    const Spacer(),
                    Text(discount, style: TextStyles.font14Bgreengray500),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Total Price', style: TextStyles.font14Black500),
                    const Spacer(),
                    Text(totalprice, style: TextStyles.font16Black600)
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
