import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/features/contact_us/logic/contactus_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/features/contact_us/ui/widgets/contact_us_bloc_listener.dart';
import 'package:home_ease/features/contact_us/ui/widgets/contact_us_form.dart';

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
              const ContactUSForm(),
              CustomButton(
                text: 'Send'.tr(),
                style: TextStyles.font18Black700,
                onPressed: () {
                  validateThenDoSendMassage(context);
                },
              ),
              const ContactUsBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSendMassage(BuildContext context) {
    if (context.read<ContactUsCubit>().formKey.currentState!.validate()) {
      context.read<ContactUsCubit>().emitSentMassageStates();
      // context.read<RegisterCubit>().saveUserInformation();
    }
  }
}
