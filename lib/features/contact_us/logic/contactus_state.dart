

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contactus_state.freezed.dart';

@freezed
class ContactUsState<T> with _$ContactUsState<T> {
  
  const factory ContactUsState.initial() = _Initial;

  const factory ContactUsState.loading() = Loading;

  const factory ContactUsState.sentMassageSuccess(T data) = SentMassageSuccess<T>;

  const factory ContactUsState.error({required String error}) = Error;
}