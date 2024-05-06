import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/features/auth/login/data/models/login_request_body.dart';

import 'package:home_ease/features/auth/login/logic/login_state.dart';
import 'package:home_ease/features/auth/login/data/repo/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  final LoginRepo _loginRepo;

  Future<void> emitLoginAuthStates() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(LoginRequestBody(
        password: passwordController.text,
        phone: phoneController.text));
    response.when(success: (loginResponse) {

       CacheHelper.saveData(key:'token', value: loginResponse.token.toString());        
      log(loginResponse.token.toString());
      emit(LoginState.loginSuccess(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}