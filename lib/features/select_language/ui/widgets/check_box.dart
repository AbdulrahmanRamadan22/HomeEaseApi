import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/translations/locale_keys.dart';

class MyCheckboxListTile extends StatelessWidget {
  final bool isChecked;

  final void Function(bool?)? onChanged;

  const MyCheckboxListTile({super.key, this.isChecked = false, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: ColorsApp.mainGreen,
          title: Text(LocaleKeys.agreeingToTheTermsAndConditions.tr(),
              style: TextStyles.font12blackOpacity700),
          value: isChecked,
          onChanged: onChanged,
        ),
        TextButton(
            onPressed: () {
              context.pushNamed(Routes.termsAndConditions);
            },
            child: Text(LocaleKeys.termsAndConditions.tr(),
                style: TextStyles.font12mainGreen700.copyWith(fontSize: 16))),
      ],
    );
  }
}
