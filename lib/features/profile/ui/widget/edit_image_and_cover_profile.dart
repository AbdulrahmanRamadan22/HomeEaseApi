// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:home_ease/core/models/users/user_model.dart';
// import 'package:home_ease/core/theming/colors.dart';
// import 'package:home_ease/features/profile/logic/profile_cubit.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class EditImageAndCoverProfile extends StatelessWidget {
//   EditImageAndCoverProfile({
//     super.key,
//     required this.userModel,
//   });

//   UserModel userModel;

//   @override
//   Widget build(BuildContext context) {
//     var profileImage = BlocProvider.of<ProfileCubit>(context).profileImage;
//     var coverImage = BlocProvider.of<ProfileCubit>(context).coverImage;

//     return SizedBox(
//       height: 210.0.h,
//       child: Stack(
//         alignment: AlignmentDirectional.bottomCenter,
//         children: [
//           Align(
//             alignment: AlignmentDirectional.topCenter,
//             child: Stack(
//               alignment: AlignmentDirectional.topEnd,
//               children: [
//                 Container(
//                   height: 150.0.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(
//                         4.0,
//                       ),
//                       topRight: Radius.circular(
//                         4.0,
//                       ),
//                     ),
//                     image: DecorationImage(
//                        image: coverImage == null
//                           ? NetworkImage("${userModel.cover}") as ImageProvider<Object>
//                           : FileImage(coverImage) as ImageProvider<Object>,
//                       fit: BoxFit.cover,
                    
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const CircleAvatar(
//                     backgroundColor: ColorsApp.mainGreen,
//                     radius: 20.0,
//                     child: Icon(
//                       Icons.add_a_photo,
//                       color: ColorsApp.white,
//                       // IconBroken.Indicator,
//                       // IconBroken.Camera,
//                       size: 16.0,
//                     ),
//                   ),
//                   onPressed: () {
//                      BlocProvider.of<ProfileCubit>(context)
//                       .getCoverImageGallery();
//                   },
//                 ),
//               ],
//             ),
//           ),
//           Stack(
//             alignment: AlignmentDirectional.bottomEnd,
//             children: [
//               CircleAvatar(
//                 radius: 66.0,
//                 backgroundColor: ColorsApp.white,
//                 child: CircleAvatar(
//                   radius: 64.0,
//                   backgroundImage: profileImage == null
//                       ? NetworkImage('${userModel.profilePhotoURL}')
//                           as ImageProvider<Object>?
//                       : FileImage(profileImage) as ImageProvider<Object>?,
//                 ),
//               ),
//               IconButton(
//                 icon: const CircleAvatar(
//                   backgroundColor: ColorsApp.mainGreen,
//                   radius: 20.0,
//                   child: Icon(
//                     Icons.add_a_photo,
//                     color: ColorsApp.white,
//                     // IconBroken.Indicator,
//                     // IconBroken.Camera,
//                     size: 16.0,
//                   ),
//                 ),
//                 onPressed: () {
//                   BlocProvider.of<ProfileCubit>(context)
//                       .getProfileImageGallery();
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
