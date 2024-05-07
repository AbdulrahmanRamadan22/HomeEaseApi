// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class ButtonCard extends StatelessWidget {
  ButtonCard({
    Key? key,
    this.image,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final String? image;
  final String text;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 60,
      child: MaterialButton(
        elevation: 0,
        onPressed: onPressed,
        textColor: Colors.white,
        color: ColorsApp.white,
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsApp.yallow),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image!,
            ),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: TextStyles.font16Black700,
            ),
          ],
        ),
      ),
    );
  }
}
