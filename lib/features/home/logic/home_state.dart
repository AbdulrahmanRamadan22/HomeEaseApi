


import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getCategoriesLoading() = GetCategoriesLoading;

  const factory HomeState.getCategoriesSuccess(T data) = GetCategoriesSuccess<T>;

  const factory HomeState.getCategoriesError({required String error}) = GetCategoriesError;
}