// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class CardAddressLocation extends StatelessWidget {
  const CardAddressLocation({
    Key? key,
    this.imagebackground,
    this.foregroundImage,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String? imagebackground;
  final String? foregroundImage;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorsApp.darkGreen,
      ),
      child: ListTile(
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: Image.asset(imagebackground!),
            ),
            Image.asset(foregroundImage!)
          ],
        ),
        title: Text(title, style: TextStyles.font10white500),
        subtitle: Text(subtitle, style: TextStyles.font12white700),
      ),
    );
  }
}
