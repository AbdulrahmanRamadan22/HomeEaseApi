// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:home_ease/core/helpers/app_regex.dart';
// import 'package:home_ease/core/theming/colors.dart';
// import 'package:home_ease/core/theming/text_styles%20.dart';
// import 'package:home_ease/core/widgets/app_text_form_field.dart';
// import 'package:home_ease/core/widgets/custom_button.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:home_ease/features/profile/logic/profile_cubit.dart';
// import 'package:home_ease/features/profile/logic/profile_state.dart';
// import 'package:home_ease/features/profile/ui/widget/edit_image_and_cover_profile.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class EditProfileScreen extends StatelessWidget {
//   const EditProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Edit Profile'.tr(),
//           style: TextStyles.font18Black700,
//         ),
//       ),
//       body: BlocConsumer<ProfileCubit, ProfileState>(
//           listener: (context, state) {},
//           builder: (context, state) {
//             var userModel = BlocProvider.of<ProfileCubit>(context).userModel;
    
//             if (userModel == null) {
//               return const Center(
//                   child: CircularProgressIndicator(
//                 color: ColorsApp.mainGreen,
//               ));
//             } else {
//               var cubit = BlocProvider.of<ProfileCubit>(context);
//               cubit.fullNameController.text = userModel.fullName;
//               cubit.phoneController.text = userModel.phone;
    
//               return SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     if (state is ProfileUpdateLoadingState)
//                       const LinearProgressIndicator(
//                         color: ColorsApp.mainGreen,
//                       ),
//                     if (state is ProfileUpdateLoadingState)
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                     EditImageAndCoverProfile(userModel: userModel),
//                     const SizedBox(
//                       height: 20.0,
//                     ),
//                     if (cubit.profileImage != null ||
//                         cubit.coverImage != null)
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 20.w),
//                         child: Row(
//                           children: [
//                             if (cubit.profileImage != null)
//                               Expanded(
//                                 child: Column(
//                                   children: [
//                                     CustomButton(
//                                       height: 50,
//                                       onPressed: () {
//                                         cubit.uploadProfileImage(context);
//                                       },
//                                       text: 'upload profile',
//                                     ),
//                                     if (state is ProfileUpdateLoadingState)
//                                       const SizedBox(
//                                         height: 5.0,
//                                       ),
//                                     if (state is ProfileUpdateLoadingState)
//                                       const LinearProgressIndicator(
//                                         color: ColorsApp.mainGreen,
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             const SizedBox(
//                               width: 5.0,
//                             ),
//                             if (cubit.coverImage != null)
//                               Expanded(
//                                 child: Column(
//                                   children: [
//                                     CustomButton(
//                                       height: 50,
//                                       onPressed: () {
//                                         cubit.uploadCoverImage();
//                                       },
//                                       text: 'upload cover',
//                                     ),
//                                     if (state is ProfileUpdateLoadingState)
//                                       const SizedBox(
//                                         height: 5.0,
//                                       ),
//                                     if (state is ProfileUpdateLoadingState)
//                                       const LinearProgressIndicator(
//                                         color: ColorsApp.mainGreen,
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                     if (cubit.profileImage != null ||
//                         cubit.coverImage != null)
//                       SizedBox(
//                         height: 32.h,
//                       ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 20.w),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Full Name'.tr(),
//                             style: TextStyles.font16Black600,
//                           ),
//                           SizedBox(
//                             height: 8.h,
//                           ),
//                           AppTextFormField(
//                             controller: context
//                                 .read<ProfileCubit>()
//                                 .fullNameController,
//                             suffixIcon: const Icon(
//                               Icons.person_2_outlined,
//                               color: Color(0xffB5B5B5),
//                             ),
//                             hintText: 'Enter your Name'.tr(),
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter a valid Full Name'.tr();
//                               } else if (value.length <= 3) {
//                                 return 'fullName must be at least 4 characters'
//                                     .tr();
//                               }
//                             },
//                           ),
//                           SizedBox(
//                             height: 18.h,
//                           ),
//                           Text(
//                             'Phone'.tr(),
//                             style: TextStyles.font16Black600,
//                           ),
//                           SizedBox(
//                             height: 8.h,
//                           ),
//                           AppTextFormField(
//                             controller:
//                                 context.read<ProfileCubit>().phoneController,
//                             suffixIcon: const Icon(
//                               Icons.phone_outlined,
//                               color: Color(0xffB5B5B5),
//                             ),
//                             hintText: 'Enter your phone'.tr(),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter mobile number';
//                               } else if (!AppRegex.isPhoneNumberValid(
//                                   value)) {
//                                 return 'Please enter valid mobile number';
//                               }
//                             },
//                           ),
//                           SizedBox(
//                             height: 50.h,
//                           ),
//                           CustomButton(
//                             text: 'Save Changes'.tr(),
//                             style: TextStyles.font18Black700,
//                             onPressed: () {
//                               BlocProvider.of<ProfileCubit>(context)
//                                   .updateUser();
//                               // uploadProfileImage
//                               //   context.pushNamed(Routes.);
//                             },
//                           ),
//                           SizedBox(
//                             height: 60.h,
//                           ),
//                           // Align(
//                           //   alignment: Alignment.center,
//                           //   child: ElevatedButton.icon(
//                           //     style: ElevatedButton.styleFrom(
//                           //       backgroundColor: Colors.red[100],
//                           //       minimumSize: Size(220.w, 60.h),
//                           //       shape: RoundedRectangleBorder(
//                           //         borderRadius: BorderRadius.circular(16.r),
//                           //       ),
//                           //     ),
//                           //     onPressed: () {},
//                           //     icon: Icon(
//                           //       Icons.delete_outlined,
//                           //       color: ColorsApp.red,
//                           //     ),
//                           //     label: Text(
//                           //       'Delete Account'.tr(),
//                           //       style: TextStyles.font16Black700,
//                           //     ),
//                           //   ),
//                           // ),
//                           SizedBox(
//                             height: 50.h,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }
    
//             // var userModel = ProfileCubit.get(context).userModel
//           }),
//     );
//   }
// }
