import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/widgets/setup_error_state.dart';
import 'package:home_ease/core/widgets/show_progress_indicator.dart';
import 'package:home_ease/core/widgets/show_snack_bar.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
import 'package:home_ease/features/auth/register/logic/register_state.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is RegisterLoading ||
          current is RegisterSuccess ||
          current is RegisterError,
      listener: (context, state) {
        state.whenOrNull(
          registerLoading: () {
            showProgressIndicator(context);
          },
          registerSuccess: (data) {
            context.pop();
            showSnackBar(
              context,
              content: "Account created successfully".tr(),
              backgroundColor: ColorsApp.mainGreen,
            );
            context.pushReplacementNamed(Routes.homeLayout);
          },
          registerError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
