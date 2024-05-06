import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';


class PhoneTextFormField extends StatelessWidget {
 final TextEditingController? controller;
 final void Function(PhoneNumber)? onChanged;

  const PhoneTextFormField({super.key,this.controller,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      validator: (value) {
        if (value == null || value.completeNumber.isEmpty|| value.number.isEmpty) {
          return 'Please enter a valid phone number';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsApp.mainGreen,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.lightGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: TextStyles.font16Gray500,
        hintText: "Enter your phone",
        suffixIcon: Icon(
          Icons.phone_outlined,
          color: ColorsApp.gray,
        ),
        fillColor: ColorsApp.lightGreen,
        filled: true,
      ),
      initialCountryCode: 'EG',
      onChanged: onChanged,
      onSubmitted: (phone) {},
    );
  }
}
