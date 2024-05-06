import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class ShowAlertDialogError extends StatelessWidget {
  final String error;
  const ShowAlertDialogError({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: TextStyles.font16Black600,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font12mainGreen700,
          ),
        ),
      ],
    );
  }
}