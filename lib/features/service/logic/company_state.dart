


import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_state.freezed.dart';

@freezed
class CompanyState<T> with _$CompanyState<T> {
  
  const factory CompanyState.initial() = _Initial;


  const factory CompanyState.getHourlyAllCompaniesLoading() = GetHourlyAllCompaniesLoading;

  const factory CompanyState.getHourlyAllCompaniesSuccess(T data) = GetHourlyAllCompaniesSuccess<T>;

  const factory CompanyState.getHourlyAllCompaniesError({required String error}) = GetHourlyAllCompaniesError;



    const factory CompanyState.getContractAllCompaniesLoading() = GetContractAllCompaniesLoading;

  const factory CompanyState.getContractAllCompaniesSuccess(T data) = GetContractAllCompaniesSuccess<T>;

  const factory CompanyState.getContractAllCompaniesError({required String error}) = GetContractAllCompaniesError;




}