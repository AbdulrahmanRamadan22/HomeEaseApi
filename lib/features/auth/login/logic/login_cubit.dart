import 'package:flutter/material.dart';

import 'package:home_ease/features/auth/login/logic/login_state.dart';
import 'package:home_ease/features/auth/login/repo/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginRepo loginRepo;

  Future<void> emitLoginAuthStates() async {

    emit(const LoginState.loading());




      


  }

}
