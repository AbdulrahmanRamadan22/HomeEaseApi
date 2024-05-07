


import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie_state.freezed.dart';

@freezed
class CategoryState<T> with _$CategoryState<T> {
  
  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.getCategoriesLoading() = GetCategoriesLoading;

  const factory CategoryState.getCategoriesSuccess(T data) = GetCategoriesSuccess<T>;

  const factory CategoryState.getCategoriesError({required String error}) = GetCategoriesError;
}