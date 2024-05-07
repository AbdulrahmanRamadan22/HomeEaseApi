// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:home_ease/features/service/data/repo/company_repo.dart';

import 'package:home_ease/features/service/logic/company_state.dart';

class CompanyCubit extends Cubit<CompanyState> {
  CompanyCubit(this._CompanyRepo) : super(const CompanyState.initial());

  final CompanyRepo _CompanyRepo;

  List contractCompanies = [];
  Future<void> emitGetContractAllCompaniesStates() async {
    emit(const CompanyState.getContractAllCompaniesLoading());

    final response = await _CompanyRepo.getContractAllCompanies();
    response.when(success: (response) {
      log(response.toString());
      contractCompanies = response.companies!;
      emit(CompanyState.getContractAllCompaniesSuccess(response));
    }, failure: (error) {
      emit(CompanyState.getContractAllCompaniesError(
          error: error.apiErrorModel.message ?? ''));
    });
  }

  List hourlyCompanies = [];

  Future<void> emitGetHourlyAllCompaniesStates() async {
    emit(const CompanyState.getHourlyAllCompaniesLoading());

    final response = await _CompanyRepo.getHourlyAllCompanies();
    response.when(success: (response) {
      log(response.toString());
      hourlyCompanies = response.companies!;
      emit(CompanyState.getHourlyAllCompaniesSuccess(response));
    }, failure: (error) {
      emit(CompanyState.getHourlyAllCompaniesError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
