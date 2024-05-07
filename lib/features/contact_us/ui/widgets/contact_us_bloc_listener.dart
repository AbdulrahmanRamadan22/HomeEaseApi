import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/widgets/setup_error_state.dart';
import 'package:home_ease/core/widgets/show_progress_indicator.dart';
import 'package:home_ease/core/widgets/show_snack_bar.dart';
import 'package:home_ease/features/contact_us/logic/contactus_cubit.dart';
import 'package:home_ease/features/contact_us/logic/contactus_state.dart';

class ContactUsBlocListener extends StatelessWidget {
  const ContactUsBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactUsCubit, ContactUsState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is SentMassageSuccess ||
          current is Error,
      listener: (context, state) {
        if (state is SentMassageSuccess) {
          context.pop();
          showSnackBar(
            context,
            content: "Contact successfully sent",
            backgroundColor: ColorsApp.mainGreen,
          );
          context.pushNamed(Routes.homeLayout);
        } else if (state is Error) {
          setupErrorState(context, state.error);
        } else {
          showProgressIndicator(context);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
