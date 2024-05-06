import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/widgets/phone_text_form_field.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name'.tr(),
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            suffixIcon: Icon(
              Icons.person_2_outlined,
              color: ColorsApp.gray,
            ),
            hintText: 'Enter your Full Name'.tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Full Name'.tr();
              } else if (value.length <= 3) {
                return 'fullName must be at least 4 characters'.tr();
              }
            },
            controller: cubit.fullNameController,
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Phone'.tr(),
            style: TextStyles.font16Black600,
          ),
          PhoneTextFormField(
            controller: cubit.phoneController,
            onChanged: (phone) {
              cubit.countryCode = phone.countryCode;
            },
          ),
          Text(
            'Email'.tr(),
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            controller: cubit.emailController,
            keyboardType: TextInputType.emailAddress,
            suffixIcon: Icon(
              Icons.email_outlined,
              color: ColorsApp.gray,
            ),
            hintText: 'Enter your Email'.tr(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email'.tr();
              }
            },
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Password'.tr(),
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            keyboardType: TextInputType.visiblePassword,
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsApp.gray,
              ),
            ),
            hintText: 'Enter Your Password'.tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Password'.tr();
              } else if (!AppRegex.hasMinLength(value)) {
                return 'Password must be at least 8 characters'.tr();
              }
            },
            controller: cubit.passwordController,
          ),
          SizedBox(
            height: 48.h,
          ),
        ],
      ),
    );
  }
}
