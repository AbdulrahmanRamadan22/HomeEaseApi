// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/home/data/models/categorie_model.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCategoryItem extends StatelessWidget {
  final VoidCallback? onTap;
  final Category category;
  const BuildCategoryItem({super.key, required this.category, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorsApp.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(
                  0.6,
                  0.6,
                ), // shadow direction: bottom right
              )
            ],
            border: Border.all(
              color: ColorsApp.lightGray,
              width: 0.2,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              category.imgUrl,
              width: 120.w,
              height: 120.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              category.title,
              // LocaleKeys.hourlyCleaning.tr(),
              // "hourly cleaning".tr(),
              style: TextStyles.font18Black700,
            ),
          ],
        ),
      ),
    );
  }
}
