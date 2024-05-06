// import 'package:flutter/material.dart';
// import 'package:home_ease/core/theming/text_styles%20.dart';
// import 'package:home_ease/core/widgets/card_contact.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
// import 'package:easy_localization/easy_localization.dart';

// class RegisterCardSocial extends StatelessWidget {
//   const RegisterCardSocial({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           'OR',
//           style: TextStyles.font12black500,
//         ),
//         CardSocial(
//           text: 'Facebook'.tr(),
//           image: 'assets/images/facebook.png',
//           onTap: () {
//             context.read<RegisterCubit>().emitSignInWithFacebookAuthStates();
//           },
//         ),
//         SizedBox(
//           height: 14.h,
//         ),
//         CardSocial(
//           text: 'Google'.tr(),
//           image: 'assets/images/Vector.png',
//           onTap: () {
//             context.read<RegisterCubit>().emitSignInWithGoogleAuthStates();
//           },
//         ),
//       ],
//     );
//   }
// }
