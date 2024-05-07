import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/features/contact_us/logic/contactus_cubit.dart';

class ContactUSForm extends StatelessWidget {
  const ContactUSForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ContactUsCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 340.w,
            child: Text(
              'We are pleased to contact you to hear your inquiries and opinions'
                  .tr(),
              style: TextStyles.font18yallow700.copyWith(color: ColorsApp.gray),
            ),
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
            keyboardType: TextInputType.name,
            controller: context.read<ContactUsCubit>().nameController,
            hintText: 'Enter your Name'.tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid  Name'.tr();
              } else if (value.length <= 3) {
                return 'fullName must be at least 4 characters'.tr();
              }
            },
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
            keyboardType: TextInputType.phone,
            controller: context.read<ContactUsCubit>().phoneController,
            hintText: 'Enter your phone'.tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid phone'.tr();
              }
            },
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
          SizedBox(
            height: 100.h,
            child: AppTextFormField(
              keyboardType: TextInputType.text,
              controller: context.read<ContactUsCubit>().messageController,
              hintText: 'Enter Your massage'.tr(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid massage'.tr();
                }
              },
            ),
          ),
          SizedBox(
            height: 53.h,
          ),
        ],
      ),
    );
  }
}
