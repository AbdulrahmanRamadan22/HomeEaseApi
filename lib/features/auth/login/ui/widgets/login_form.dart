// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isPasswordObscureText = true;

  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            keyboardType: keyboardType,
            suffixIcon: Icon(
              Icons.email_outlined,
              color: ColorsApp.gray,
            ),
            hintText: 'Enter your Email OR phone number',
            validator: (value) {
              if (keyboardType == TextInputType.phone) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value.toString())) {
                  return 'Please enter a valid phone number';
                }
              } else if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value.toString())) {
                return 'Please enter a valid email address';
              }
            },
            controller: keyboardType == TextInputType.phone
                ? context.read<LoginCubit>().phoneController
                : context.read<LoginCubit>().emailController,
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Password',
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
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
            controller: context.read<LoginCubit>().passwordController,

            hintText: 'Enter Your Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Password';
              } else if (!AppRegex.hasMinLength(value)) {
                return 'Password must be at least 8 characters';
              }
            },
            // controller: context.read<AuthCubit>().passwordController,
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
