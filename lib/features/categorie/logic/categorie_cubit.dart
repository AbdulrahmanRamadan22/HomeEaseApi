// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:home_ease/features/categorie/data/repo/category_repo.dart';
import 'package:home_ease/features/categorie/logic/categorie_state.dart';
import 'package:home_ease/features/home/data/repo/home_repo.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._categoryRepo) : super(const CategoryState.initial());

  final CategoryRepo _categoryRepo;

  List categories = [];
  Future<void> emitGetCategoriesStates() async {
    emit(const CategoryState.getCategoriesLoading());

    final response = await _categoryRepo.getCategories();
    response.when(success: (response) {
      log(response.toString());
      categories = response.categories!;
      emit(CategoryState.getCategoriesSuccess(response));
    }, failure: (error) {
      emit(CategoryState.getCategoriesError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
