// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/models/users/user_model.dart';
import 'package:home_ease/core/theming/colors.dart';

SizedBox imageAndCoverProfile({
  UserModel? userModel,
}) {
  return SizedBox(
    height: 210.0.h,
    child: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Align(
            alignment: AlignmentDirectional.topCenter,
            child: coverProfile(userModel!)),
        imageProfile(userModel),
      ],
    ),
  );
}

CircleAvatar imageProfile(UserModel userModel) {
  // var cubit = BlocProvider.of<ProfileCubit>(context);

  return CircleAvatar(
    radius: 66.0,
    backgroundColor: ColorsApp.white,
    child: CircleAvatar(
      radius: 64.0,
      backgroundImage: NetworkImage(
        "${userModel.profilePhotoURL}",
      ),
    ),
  );
}

Container coverProfile(UserModel userModel) {
  return Container(
    height: 150.0.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(
          4.0,
        ),
        topRight: Radius.circular(
          4.0,
        ),
      ),
      image: DecorationImage(
        image: NetworkImage(
          "${userModel.cover}",
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
