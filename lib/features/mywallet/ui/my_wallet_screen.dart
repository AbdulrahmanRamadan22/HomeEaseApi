import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/card_address_location.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/service/ui/widget/button_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/features/mywallet/ui/widget/card_wallet.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Wallet'.tr(), style: TextStyles.font18Black700),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 21.h),
        child: Column(
          children: [
            CardAddressLocation(
              imagebackground: 'assets/images/file.png',
              title: 'My Balance'.tr(),
              subtitle: '100 SR'.tr(),
              foregroundImage: 'assets/images/file.png',
            ),
            SizedBox(
              height: 38.h,
            ),
            const CardWallet(
              textAmount: '100 SR have been added to your balance',
              textHour: '2 hr',
              textButton: 'Add to wallet',
            ),
            SizedBox(
              height: 20.h,
            ),
            const CardWallet(
              textAmount: '100 SR have been added to your balance',
              textHour: '2 hr',
              textButton: 'wallet discount',
              // backGround: Color(0xffF8BBD0),
            ),
          ],
        ),
      ),
    );
  }
}
