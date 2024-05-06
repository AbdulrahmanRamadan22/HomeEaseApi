// import 'package:flutter/material.dart';
// import 'package:home_ease/core/theming/text_styles%20.dart';
// import 'package:home_ease/core/widgets/card_contact.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
// import 'package:home_ease/features/auth/register/logic/register_cubit.dart';

// class LogicCardSocial extends StatelessWidget {
//   const LogicCardSocial({super.key});

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
//           text: 'Facebook',
//           image: 'assets/images/facebook.png',
//           onTap: () {
//             context.read<LoginCubit>().emitSignInWithFacebookAuthStates();
//           },
//         ),
//         SizedBox(
//           height: 14.h,
//         ),
//         CardSocial(
//           text: 'Google',
//           image: 'assets/images/Vector.png',
//           onTap: () {
//             context.read<LoginCubit>().emitSignInWithGoogleAuthStates();
//           },
//         ),
//       ],
//     );
//   }
// }
