// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:home_ease/features/categorie/data/repo/category_repo.dart';
import 'package:home_ease/features/home/data/repo/home_repo.dart';
import 'package:home_ease/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  List categories = [];
  Future<void> emitGetCategoriesStates() async {
    emit(const HomeState.getCategoriesLoading());

    final response = await _homeRepo.getCategories();
    response.when(success: (response) {
      log(response.toString());
      categories = response.categories!;
      emit(HomeState.getCategoriesSuccess(response));
    }, failure: (error) {
      emit(HomeState.getCategoriesError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
