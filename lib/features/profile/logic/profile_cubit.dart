// // ignore_for_file: depend_on_referenced_packages, unused_import

// import 'dart:developer';
// import 'dart:io';

// // ignore: depend_on_referenced_packages
// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:home_ease/core/helpers/constants.dart';
// import 'package:home_ease/core/helpers/navigation_extensions.dart';
// import 'package:home_ease/core/models/users/user_model.dart';
// import 'package:home_ease/core/networking/local/cache_helper.dart';
// import 'package:home_ease/core/networking/remote/firestore_services.dart';
// import 'package:home_ease/features/profile/logic/profile_state.dart';
// import 'package:image_picker/image_picker.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// class ProfileCubit extends Cubit<ProfileState> {
//   // ignore: prefer_typing_uninitialized_variables

//   ProfileCubit() : super(const ProfileState.initial());

//   TextEditingController fullNameController = TextEditingController();
//   // TextEditingController emailController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   // ignore: prefer_typing_uninitialized_variables
//   UserModel? userModel;
//   final service = FirestoreServices.instance;

//   Future<void> getUserData() async {
//     emit(const ProfileState.loading());

//     await FirebaseFirestore.instance
//         .collection('users')
//         .doc(uId)
//         .get()
//         .then((value) {
//       // log("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${value.data()}");
//       userModel = UserModel.fromJson(value.data()!);

//       fullNameController.text = userModel!.fullName;
//       phoneController.text = userModel!.phone;

//  CacheHelper.saveData(key: 'fullName', value: value.data()!['fullName']);

//       emit(ProfileState.getUserSuccess(userModel));
//     }).catchError((error) {
//       log(error.toString());
//       emit(ProfileState.getUserError(error: error.toString()));
//     });
//   }

//   Future<void> getUser() async {
//     if (userModel == null) {
//       await getUserData();
//     } else {
//       emit(ProfileState.getUserSuccess(userModel));
//     }
//   }

//   var picker = ImagePicker();

//   File? profileImage;

//   Future<void> getProfileImageGallery() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       profileImage = File(pickedFile.path);
//       emit(const ProfileState.getProfileImagePickedSuccessState());
//     } else {
//       log('No image selected.');

//       emit(const ProfileState.getProfileImagePickedErrorState());
//     }
//   }

//   File? coverImage;

//   Future<void> getCoverImageGallery() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       coverImage = File(pickedFile.path);
//       emit(const ProfileState.getCoverImagePickedSuccessState());
//     } else {
//       log('No image selected.');

//       emit(const ProfileState.getCoverImagePickedErrorState());
//     }
//   }



//   void uploadProfileImage(BuildContext context) {
//     emit(const ProfileState.profileUpdateLoadingState());

//     firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('users/${Uri.file(profileImage!.path).pathSegments.last}')
//         .putFile(profileImage!)
//         .then((value) {
//       value.ref.getDownloadURL().then((value) {
//         log(value);

//         updateUser(
//           image: value,
//         );

//         ProfileCubit().getUserData();

//         context.pop();

//         // updateUser(
//         //   name:name,
//         //   phone:phone,
//         //   bio:bio,
//         //   image:value,
//         // );
//       }).catchError((error) {
//         emit(const ProfileState.uploadProfileImageErrorState());
//       });
//     }).catchError((error) {
//       emit(const ProfileState.uploadProfileImageErrorState());
//     });
//   }

//   void uploadCoverImage() {
//     emit(const ProfileState.profileUpdateLoadingState());
//     firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('users/${Uri.file(coverImage!.path).pathSegments.last}')
//         .putFile(coverImage!)
//         .then((value) {
//       value.ref.getDownloadURL().then((value) {
//         // emit(const ProfileState.uploadCoverImageSuccessState());
//         log(value);

//         updateUser(
//           cover: value,
//         );

//         // emit(const ProfileState.uploadCoverImageSuccessState());

//         // updateUser(
//         //   name:name,
//         //   phone:phone,
//         //   bio:bio,
//         //   image:value,
//         // );
//       }).catchError((error) {
//         emit(const ProfileState.uploadCoverImageErrorState());
//       });
//     }).catchError((error) {
//       emit(const ProfileState.uploadCoverImageErrorState());
//     });
//   }

//   Future<void> updateUser({
//     String? cover,
//     String? image,
//   }) async {
//     service
//         .setData(
//       path: "users/$uId",
//       data: UserModel(
//         fullName: fullNameController.text,
//         email: userModel!.email.toString(),
//         profilePhotoURL: image ?? userModel!.profilePhotoURL.toString(),
//         cover: cover ?? userModel!.cover.toString(),
//         type: 'user',
//         uId: userModel!.uId,
//         phone: phoneController.text,
//       ).toJson(),
//     )
//         .then((value) {
//       getUserData();

//       // emit(const ProfileState.updateUserSuccessState());
//     }).catchError((error) {
//       emit(const ProfileState.profileUpdateErrorState());
//     });
//   }

//   final _firebaseAuth = FirebaseAuth.instance;
//   final _googleSignIn = GoogleSignIn();

//   Future<void> logout() async {
//     CacheHelper.removeData(key: 'uId');
//     CacheHelper.removeData(key: 'fullName');

//     if(await _googleSignIn.isSignedIn()){
//     await _googleSignIn.signOut();

//     }

//     await _firebaseAuth.signOut();
// // ignore: unnecessary_null_comparison
// if(FacebookAuth!=null){
//       await FacebookAuth.instance.logOut();
// }
//   }
// }
