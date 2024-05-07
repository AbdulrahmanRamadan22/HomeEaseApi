import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/features/contact_us/data/contact_us_repo.dart';
import 'package:home_ease/features/contact_us/logic/contactus_state.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit(this._contactUsRepo) : super(const ContactUsState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController messageController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  final ContactUsRepo _contactUsRepo;
  
 var token = CacheHelper.getData(key:'token');

  Future<void> emitSentMassageStates() async {
    emit(const ContactUsState.loading());

    final response = await _contactUsRepo.contactUs(data: {
      "message": messageController.text,
    }, token: "Bearer $token");

    response.when(success: (contactUs) {
      emit(ContactUsState.sentMassageSuccess(contactUs));
    }, failure: (error) {
      emit(ContactUsState.error(error: error.toString()));
    });
  }
}
