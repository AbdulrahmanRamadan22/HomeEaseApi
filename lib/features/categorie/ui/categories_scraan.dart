// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          'Categories'.tr(),
          // LocaleKeys.categories.tr(),
          // 'Categories'.tr()
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            AppTextFormField(
              hintText:"findCategory".tr(),
              //  LocaleKeys.findCategory.tr(),
              // "Find Category".tr(),
              validator: (p0) {},
              backgroundColor: ColorsApp.white,
              suffixIcon: Icon(
                Icons.search,
                size: 30,
                color: ColorsApp.gray,
              ),
            ),
        
              // StreamBuilder<List<Category>>(
              //   stream: Cubit.getCategories(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState ==
              //         ConnectionState.active) {
              //       final category = snapshot.data;
              //       if (category == null || category.isEmpty) {
              //         return const Center(
              //           child: Text('No Data Available!'),
              //         );
              //       }
              //       return BuildGridView(
              //         itemCount: category.length,
              //         itemBuilder: (context, index) {
              //           return BuildCategoryItem(
              //             onTap: () {
              //                 context.pushNamed(
              //                   Routes.hourlyCleanScreen,
              //                 );
              //               },
              //             category: category[index],
              //           );
              //         },
              //       );
              //     }
              //     return const Center(
              //       child: CircularProgressIndicator(
              //         color: ColorsApp.mainGreen,
              //       ),
              //     );
              //   },
              // ),
          ],
        ),
      ),
    );
  }
}
