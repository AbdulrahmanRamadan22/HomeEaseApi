import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/categorie/data/models/category_model.dart';

class CardTypeService extends StatelessWidget {
  final VoidCallback? onTap;
  final Categories? category;
  final String serviceType;
  const CardTypeService(
      {super.key,
      required this.category,
      this.onTap,
      required this.serviceType});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 230.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorsApp.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(
                  0.8,
                  0.8,
                ), // shadow direction: bottom right
              )
            ],
            border: Border.all(
              color: ColorsApp.mainGreen,
              width: 0.7,
            )),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "http://192.168.0.101:8000/storage/${category!.path}",
                width: 120.w,
                height: 120.h,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                serviceType,
                style: TextStyles.font18Black700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
