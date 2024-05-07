import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/features/categorie/data/models/category_model.dart';
import 'package:home_ease/features/service/service_type/ui/card_type_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceType extends StatelessWidget {
  const ServiceType({super.key, required this.category});
  final Categories? category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Service Type'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardTypeService(
              onTap: () {
                context.pushNamed(Routes.hourlyServiceScreen,
                    arguments: category
                    // params: {'categoryId': category.id.toString()});
                    );
              },
              category: category,
              serviceType: 'Hourly service',
            ),
            SizedBox(
              height: 40.h,
            ),
            CardTypeService(
              onTap: () {
                context.pushNamed(Routes.contractServiceScreen,
                    arguments: category);
              },
              category: category,
              serviceType: 'contract Service ',
            ),
            const Row(
              children: [],
            ),
          ]),
    );
  }
}
