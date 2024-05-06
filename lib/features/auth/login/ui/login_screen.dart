// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
import 'package:home_ease/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/auth/login/ui/widgets/dont_have_account_text.dart';
import 'package:home_ease/features/auth/login/ui/widgets/login_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80.h,
              ),
              Text(
                'Login'.tr(),
                style: TextStyles.font28Black700,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.h),
                child: SizedBox(
                  width: 340.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.'.tr(),
                    style: TextStyles.font14Black500,
                  ),
                ),
              ),
              const LoginForm(),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.forgetPasswordScreen);
                  },
                  child: Text(
                    'Forget Password ?'.tr(),
                    style: TextStyles.font16Black600,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomButton(
                text: 'Login'.tr(),
                onPressed: () {
                  validateThenDoLogin(context);
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              // const LogicCardSocial(),
              const DontHaveAccountText(),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginAuthStates();
    }
  }
}
