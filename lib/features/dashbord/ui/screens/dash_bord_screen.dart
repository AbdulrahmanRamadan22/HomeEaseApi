import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/dashbord/ui/widget/admin_card_db.dart';

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {
                CacheHelper.removeData(key: "uId");

                context.pushReplacementNamed(Routes.loginScreen);
              },
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
            ),
          )
        ],
        elevation: 1,
        leading: const SizedBox.shrink(),
        centerTitle: true,
        title: Text(
          "HomeScreen",
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Wrap(
                  spacing: 20.w,
                  runSpacing: 30.h,
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                      child: AdminCardDb(
                        image: 'assets/images/images.jpeg',
                        title: 'Categories',
                        onTap: () {
                          // context.pushNamed(Routes.adminCategoriesScreen);

                          // Navigator.pushNamed(
                          //     context, '/addcategoriesdashbordscreen');
                        },
                      ),
                    ),
                    // const SizedBox(
                    //   child: AdminCardDb(
                    //     image: 'assetsi/mages/flat.png',
                    //     title: 'Flats',
                    //   ),
                    // ),
                    // const SizedBox(
                    //   child: AdminCardDb(
                    //     image: 'assets/images/splash.png',
                    //     title: 'Category',
                    //   ),
                    // ),
                    // const SizedBox(
                    //   child: AdminCardDb(
                    //     image: 'assets/images/images.jpeg',
                    //     title: 'Category',
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
