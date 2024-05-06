// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class CardComments extends StatelessWidget {
  const CardComments({
    Key? key,
    this.imageCustomer,
    required this.nameCustomer,
    required this.dateCustomer,
    required this.descriptionCustomer,
  }) : super(key: key);
  final String? imageCustomer;
  final String nameCustomer;
  final String dateCustomer;
  final String descriptionCustomer;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: ColorsApp.white,
                backgroundImage: Image.asset(imageCustomer!).image,
              ),
              SizedBox(
                width: 7.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nameCustomer.tr(), style: TextStyles.font14Black700),
                  Text(dateCustomer.tr(),
                      style: TextStyles.font12blackOpacity700)
                ],
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            descriptionCustomer..tr(),
            style: TextStyles.font14Bgray500,
            maxLines: 2,
          ),
          SizedBox(
            height: 22.h,
          ),
        ],
      ),
    );
  }
}
