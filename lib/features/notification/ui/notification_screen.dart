import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/notification/ui/widget/cart_notification_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, this.textnotification});
  final String? textnotification;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification'.tr(),
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.h),
              width: double.infinity,
              // height: 156.h,
              decoration: BoxDecoration(
                border: Border.all(color: ColorsApp.lightGray),
                color: ColorsApp.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(18.r),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Order Confirmed'.tr(),
                        style: TextStyles.font14Black600),
                    leading: Image.asset(
                      'assets/images/check_right.png',
                      height: 30.h,
                    ),
                    trailing: Text('1 hr', style: TextStyles.font14Bgray500),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your order is Done'.tr(),
                            style: TextStyles.font14Bgray500),
                        Text('register payment methods'.tr(),
                            style: TextStyles.font14Bgray500),
                        SizedBox(
                          height: 18.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 346.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsApp.lightGray,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Complete payment methods'.tr(),
                            style: TextStyles.font14Bgreengray500),
                      ),
                      const Spacer(),
                      const Icon(Icons.chevron_right,
                          color: ColorsApp.mainGreen)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            CardNotificationScreen(
              textnotification: textnotification,
              image: 'assets/images/svgexport-5(61) 1.png',
              title: 'Reminder'.tr(),
              subtitle_1: 'House Shifting - #2F33J'.tr(),
              trailing: '2 hr'.tr(),
              subtitle_2: 'Scheduled Tomorrow'.tr(),
            ),
            const SizedBox(
              height: 18,
            ),
            CardNotificationScreen(
              textnotification: textnotification,
              image: 'assets/images/close_icone.png',
              title: 'Order Canceled'.tr(),
              subtitle_1: 'Your order is Canceled'.tr(),
              trailing: 'Yesterday'.tr(),
              subtitle_2: 'Try agin'.tr(),
            )
          ],
        ),
      ),
    );
  }
}
