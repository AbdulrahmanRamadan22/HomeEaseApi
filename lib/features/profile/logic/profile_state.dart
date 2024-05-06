

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.loading() = Loading;

  const factory ProfileState.getUserSuccess(T data) = GetUserSuccess<T>;

  const factory ProfileState.getUserError({required String error}) = GetUserError;

  const factory ProfileState.getProfileImagePickedSuccessState() = GetProfileImagePickedSuccessState;

  const factory ProfileState.getProfileImagePickedErrorState() = GetProfileImagePickedErrorState;

    const factory ProfileState.getCoverImagePickedSuccessState() = GetCoverImagePickedSuccessState;

  const factory ProfileState.getCoverImagePickedErrorState() = GetCoverImagePickedErrorState;

  const factory ProfileState.profileUpdateLoadingState() = ProfileUpdateLoadingState;

    const factory ProfileState.profileUpdateErrorState() = ProfileUpdateErrorState;

  const factory ProfileState.uploadProfileImageSuccessState() = UploadProfileImageSuccessState;

  const factory ProfileState.uploadProfileImageErrorState() = UploadProfileImageErrorState;


  const factory ProfileState.uploadCoverImageSuccessState() = UploadCoverImageSuccessState;

  const factory ProfileState.uploadCoverImageErrorState() = UploadCoverImageErrorState;
  

}



    // //emit(SocialUploadProfileImageSuccessState());
    //     print(value);
    //     // updateUser(
    //     //   name:name,
    //     //   phone:phone,
    //     //   bio:bio,
    //     //   image:value,
    //     // );
    //   }).catchError((error) {
    //     // emit(SocialUploadProfileImageErrorState());
    //   });
    // }).catchError((error) {
    //   // emit(SocialUploadProfileImageErrorState());


