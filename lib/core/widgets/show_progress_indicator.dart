  import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';

Future<dynamic> showProgressIndicator(BuildContext context) {
    return showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: ColorsApp.mainGreen,
              ),
            ),
          );
  }