import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
import 'package:home_ease/features/auth/register/ui/widgets/already_have_account_text.dart';
import 'package:home_ease/features/auth/register/ui/widgets/register_bloc_listener.dart';
import 'package:home_ease/features/auth/register/ui/widgets/register_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: Text(
                  'Register'.tr(),
                  style: TextStyles.font28Black700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.h),
                child: SizedBox(
                  width: 340.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Register now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!'
                        .tr(),
                    style: TextStyles.font14Black500,
                  ),
                ),
              ),
              const RegisterForm(),
              CustomButton(
                text: 'Register'.tr(),
                onPressed: () {
                  validateThenDoSignUp(context);
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              // const RegisterCardSocial(),
              const AlreadyHaveAccountText(),
              const RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterAuthStates();
      // context.read<RegisterCubit>().saveUserInformation();
    }
  }
}
