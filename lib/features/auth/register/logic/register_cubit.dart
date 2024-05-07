import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/features/auth/register/data/models/register_request_body.dart';
import 'package:home_ease/features/auth/register/data/repos/register_repo.dart';
import 'package:home_ease/features/auth/register/logic/register_state.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  final formKey = GlobalKey<FormState>();

  RegisterRepo registerRepo;

  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  late String countryCode = "";
  late String phoneNumber = countryCode + phoneController.text;

  Future<void> emitRegisterAuthStates() async {
    emit(const RegisterState.registerLoading());

    final response = await registerRepo.register(RegisterRequestBody(
        email: emailController.text,
        name: fullNameController.text,
        password: passwordController.text,
        phone: phoneNumber.toString(),
        passwordConfirmation: confirmPasswordController.text));
    response.when(success: (registerResponse) {
      CacheHelper.saveData(
          key: 'token', value: registerResponse.token.toString());

      emit(RegisterState.registerSuccess(registerResponse));
    }, failure: (error) {
      emit(RegisterState.registerError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
