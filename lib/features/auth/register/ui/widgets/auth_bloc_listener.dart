// // ignore: depend_on_referenced_packages

// // ignore: depend_on_referenced_packages
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:home_ease/core/helpers/navigation_extensions.dart';
// import 'package:home_ease/core/routing/routes.dart';
// import 'package:home_ease/core/theming/colors.dart';
// import 'package:home_ease/core/widgets/show_progress_indicator.dart';
// import 'package:home_ease/core/widgets/show_snack_bar.dart';
// import 'package:home_ease/features/register/logic/auth_phone_cubit.dart';
// import 'package:home_ease/features/register/logic/auth_phone_state.dart';

// // ignore: depend_on_referenced_packages

// class AuthBlocListener extends StatelessWidget {
//   const AuthBlocListener({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AuthPhoneCubit, AuthPhoneState>(
//       listenWhen: (previous, current) =>
//           current is Loading ||
//           current is PhoneNumberSubmited ||
//           current is PhoneOtpVerified ||
//           current is CreateUser ||
//           current is Error,
//       listener: (context, state) {
//         state.whenOrNull(
//           loading: () {
//             showProgressIndicator(context);
//           },
//           phoneNumberSubmited: () {
//             context.pop();

//             context.pushNamed(
//               Routes.otpScreen,
//               arguments: context.read<AuthPhoneCubit>().phoneNumber.toString(),
//             );
//           },
//           createUser: (data) {
//             context.pop();
//             showSnackBar(
//               context,
//               content: "Account created successfully go to home screen",
//               backgroundColor: ColorsApp.mainGreen,
//             );
//             context.pushReplacementNamed(Routes.homeLayout);
//           },
//           error: (error) {
            
//             // log("aboooooooooooooooooooooooooooooood${error.toString()}");

//             context.pop();

//             showSnackBar(
//               context,
//               content: error.toString(),
//               backgroundColor: ColorsApp.red,
//             );
//           },
//         );
//       },
//       child: const SizedBox.shrink(),
//     );
//   }

//   // void setupErrorState(BuildContext context, String error) {
//   //   context.pop();
//   //   showDialog(
//   //     context: context,
//   //     builder: (context) => AlertDialog(
//   //       icon: const Icon(
//   //         Icons.error,
//   //         color: Colors.red,
//   //         size: 32,
//   //       ),
//   //       content: Text(
//   //         error,
//   //         style: TextStyles.font16Black600,
//   //       ),
//   //       actions: [
//   //         TextButton(
//   //           onPressed: () {
//   //             context.pop();
//   //           },
//   //           child: Text(
//   //             'Got it',
//   //             style: TextStyles.font12mainGreen700,
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
// }
