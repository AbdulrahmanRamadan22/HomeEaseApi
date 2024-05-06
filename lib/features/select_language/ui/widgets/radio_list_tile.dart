import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class MyRadioListTile extends StatelessWidget {
  final String titleText;

  final int value;

  final void Function(int?)? onChanged;

  final int selectedOption;

  const MyRadioListTile(
      {super.key,
      required this.titleText,
      required this.value,
      required this.onChanged,
      this.selectedOption = 0});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titleText,style: TextStyles.font16Black600),
      trailing: Radio<int>(
        activeColor:ColorsApp.mainGreen,
        value: value,
        groupValue: selectedOption,
        onChanged: onChanged,
      
      ),
    );
  }
}




