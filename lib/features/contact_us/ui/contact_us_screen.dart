import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/widgets/show_snack_bar.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ' Contact Us'.tr(),
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'We are pleased to contact you to hear your inquiries and opinions'
                      .tr(),
                  textAlign: TextAlign.center,
                  style: TextStyles.font14Black600,
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Name'.tr(),
                style: TextStyles.font16Black600,
              ),
              SizedBox(
                height: 8.h,
              ),
              AppTextFormField(
                hintText: 'Enter your Name'.tr(),
                validator: (p0) {},
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Phone'.tr(),
                style: TextStyles.font16Black600,
              ),
              SizedBox(
                height: 8.h,
              ),
              AppTextFormField(
                hintText: 'Enter your phone'.tr(),
                validator: (p0) {},
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Massage'.tr(),
                style: TextStyles.font16Black600,
              ),
              SizedBox(
                height: 8.h,
              ),
              AppTextFormField(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 21),
                hintText: 'Enter Your massage'.tr(),
                validator: (p0) {},
              ),
              SizedBox(
                height: 53.h,
              ),
              CustomButton(
                text: 'Send'.tr(),
                style: TextStyles.font18Black700,
                onPressed: () {
                  showSnackBar(
                    context,
                    content: "Message sent successfully go to home screen",
                    backgroundColor: ColorsApp.mainGreen,
                  );
                  // context.pushNamedAndRemoveUntil(routeName: Routes.homeLayout,)
                  context.pushReplacementNamed(Routes.homeLayout);
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
