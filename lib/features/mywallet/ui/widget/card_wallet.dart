// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';

class CardWallet extends StatelessWidget {
  const CardWallet({
    Key? key,
    required this.textButton,
    required this.textHour,
    required this.textAmount,
  }) : super(key: key);
  final String textButton;
  final String textHour;
  final String textAmount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 39.w, vertical: 15.h),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsApp.lightGray,
        ),
        borderRadius: BorderRadius.circular(16.r),
        color: ColorsApp.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomButton(
                // backGround: backGround,
                onPressed: () {},
                width: 180.w,
                height: 60.h,
                text: textButton.tr(),
                radius: 8.r,
              ),
              const Spacer(),
              Text(textHour.tr()),
            ],
          ),
          SizedBox(height: 8.h),
          Text(textAmount.tr(), style: TextStyles.font14Bgray500)
        ],
      ),
    );
  }
}
