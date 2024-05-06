import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/models/users/user_model.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/features/profile/ui/widget/image_and_cover_profile.dart';

// ignore: must_be_immutable
class ProfileEditCard extends StatelessWidget {
  ProfileEditCard({super.key, this.userModel});

  UserModel? userModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageAndCoverProfile(
          userModel: userModel,
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          userModel!.fullName,
          style: TextStyles.font16Black700,
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomButton(
          width: 120.w,
          height: 55.h,
          radius: 60.r,
          onPressed: () {
            context.pushNamed(Routes.editProfileScreen);
          },
          text: 'Edit'.tr(),
          style: TextStyles.font14Black700,
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}

// Stack imageProfile() {
//   return const Stack(children: [
//     CircleAvatar(
//       radius: 72.0,
//       backgroundColor: Color.fromARGB(255, 89, 251, 103),
//       child: CircleAvatar(
//           radius: 70.0,
//           backgroundImage: NetworkImage(
//               "https://media.istockphoto.com/id/587805156/vector/profile-picture-vector-illustration.jpg?s=612x612&w=0&k=20&c=gkvLDCgsHH-8HeQe7JsjhlOY6vRBJk_sKW9lyaLgmLo=")),
//     ),
//   ]);
// }
