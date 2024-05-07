// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';

class ContainerDetilesOngoing extends StatelessWidget {
  const ContainerDetilesOngoing({
    Key? key,
    required this.contracttext,
    this.image,
    required this.companyname,
    required this.date,
    required this.ratestar,
    required this.contractname,
    required this.pricetext,
    required this.numberprice,
    required this.backgroundbutton,
    required this.namebutton,
  }) : super(key: key);
  final String contracttext; // كود العقد
  final String? image;
  final String companyname; // اسم الشركه
  final String date;
  final String ratestar;
  final String contractname; // اسم عقد العامل
  final String pricetext;
  final String numberprice;
  final dynamic backgroundbutton;
  final String namebutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 0.9,
              offset: Offset(2, 5)),
        ],
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('contract cleaning', style: TextStyles.font18Black700),
              const Spacer(),
              CustomButton(
                backGround: backgroundbutton,
                radius: 30.r,
                width: 130.w,
                text: namebutton,
                onPressed: () {},
              ),
            ],
          ),
          Text(contracttext, style: TextStyles.font14Black500),
          Divider(
            color: ColorsApp.lightGray,
            thickness: 0.5,
          ),
          SizedBox(
            height: 13.h,
          ),
          Row(
            children: [
              Image.asset(image!),
              SizedBox(width: 13.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(companyname),
                  Row(
                    children: [
                      Text(ratestar, style: TextStyles.font14Black500),
                      Text(ratestar, style: TextStyles.font14Black500),
                      Text(ratestar, style: TextStyles.font14Black500),
                      Text(ratestar, style: TextStyles.font14Black500),
                      Text(ratestar, style: TextStyles.font14Black500),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Text(date, style: TextStyles.font14Black500),
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          Divider(
            color: ColorsApp.lightGray,
            thickness: 0.5,
          ),
          SizedBox(
            height: 13.h,
          ),
          Row(
            children: [
              Text(contractname, style: TextStyles.font12blackOpacity700),
              const Spacer(),
              Column(
                children: [
                  Text(pricetext, style: TextStyles.font14Black500),
                  Text(numberprice, style: TextStyles.font16Black700),
                ],
              )
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
          Divider(
            color: ColorsApp.lightGray,
            thickness: 0.5,
          ),
          SizedBox(
            height: 11.h,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Complete payment methods',
                    style: TextStyles.font14Bgreengray500),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_sharp,
                    color: ColorsApp.mainGreen,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
