import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/features/company/ui/widget/card_comments.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
          title: Text('Company'.tr(), style: TextStyles.font18Black700),
          centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 41.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: ColorsApp.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/talg131.png',
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Text('United Group Company'.tr(),
                          style: TextStyles.font24Black700),
                      Row(
                        children: [
                          const Text('⭐'),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text('4.5'.tr(), style: TextStyles.font18Black700),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium . Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'
                              .tr(),
                          style: TextStyles.font16Gray500),
                      SizedBox(
                        height: 22.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: ColorsApp.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Comments'.tr(), style: TextStyles.font16Black700),
                      SizedBox(
                        height: 27.h,
                      ),
                      const CardComments(
                        imageCustomer: 'assets/images/profile.png',
                        nameCustomer: 'Abo_Tarek',
                        dateCustomer: '22/7/2022',
                        descriptionCustomer:
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremqu',
                      ),
                      const CardComments(
                        imageCustomer: 'assets/images/profile.png',
                        nameCustomer: 'Abodooooooooo',
                        dateCustomer: '22/7/2022',
                        descriptionCustomer:
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremqu',
                      ),
                      SizedBox(
                        height: 55.h,
                      ),
                      Text('Add comment'.tr(),
                          style: TextStyles.font16Black600),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppTextFormField(
                        hintText: 'Add Your Comment'.tr(),
                        validator: (p0) {},
                      ),
                      SizedBox(
                        height: 38.h,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
