
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/show_progress_indicator.dart';
import 'package:home_ease/core/widgets/show_snack_bar.dart';
import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
import 'package:home_ease/features/auth/login/logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is LoginSuccess || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showProgressIndicator(context);
          },
          loginSuccess: (data) {
            context.pop();
            showSnackBar(
              context,
              content: "Login successfully go to home screen",
              backgroundColor: ColorsApp.mainGreen,
            );
            // CacheHelper.saveData(key: 'token', value: data.email);
            context.pushReplacementNamed(Routes.homeLayout);
          },
          error: (error) {
            setupErrorState(context, error);
            // showSnackBar(
            //   context,
            //   content: error.toString(),
            //   backgroundColor: ColorsApp.red,
            // );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font14Black700,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14Black700
                  .copyWith(color: ColorsApp.mainGreen),
            ),
          ),
        ],
      ),
    );
  }
}
