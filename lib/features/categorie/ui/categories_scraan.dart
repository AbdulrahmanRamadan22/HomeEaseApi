// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/di/dependency_injection.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/build_grid_view.dart';
import 'package:home_ease/features/categorie/logic/categorie_cubit.dart';
import 'package:home_ease/features/categorie/logic/categorie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/features/home/ui/widgets/build_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryCubit>()..emitGetCategoriesStates(),
      child: Scaffold(
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
                hintText: "findCategory".tr(),
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
              BlocBuilder<CategoryCubit, CategoryState>(
                builder: (context, state) {
                  var categories =
                      BlocProvider.of<CategoryCubit>(context).categories;
                  if (state is GetCategoriesSuccess) {
                    return BuildGridView(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return BuildCategoryItem(
                          category: categories[index],
                          onTap: () {
                            context.pushNamed(
                              Routes.serviceType,
                              arguments: categories[index],
                            );
                          },
                          // category: category[index],
                        );
                      },
                    );
                  }
                  return const Center(
                      child: CircularProgressIndicator(
                    color: ColorsApp.mainGreen,
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
