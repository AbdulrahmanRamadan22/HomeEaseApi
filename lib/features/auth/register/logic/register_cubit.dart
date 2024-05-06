import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_ease/core/helpers/constants.dart';
import 'package:home_ease/core/models/users/user_model.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/features/auth/register/data/repos/register_repo.dart';
import 'package:home_ease/features/auth/register/logic/register_state.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());



  final formKey = GlobalKey<FormState>();

  RegisterRepo registerRepo;

  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final emailStreamController = StreamController<String>();
  final passwordStreamController = StreamController<String>();
  final fullNameStreamController = StreamController<String>();

  late String countryCode = "";
  late String phoneNumber = countryCode + phoneController.text;

  Future<void> emitRegisterAuthStates() async {
    emit(const RegisterState.registerLoading());
   
  }


}
