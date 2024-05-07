import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/features/categorie/ui/categories_scraan.dart';
import 'package:home_ease/features/history/history_screen.dart';
import 'package:home_ease/features/home/ui/home_screen.dart';
import 'package:home_ease/features/profile/ui/profile_screen.dart';
import 'package:meta/meta.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  int currentIndex = 0;

  // ProfileCubit profileCubit = ProfileCubit();

  List<Widget> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];
  void changeBottomNav(int index) {
    currentIndex = index;

    emit(BottomNavigationBarChange());

    // if(currentIndex==2){

    //   profileCubit.getUser();
    // }
  }
}
