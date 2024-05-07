import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/features/home_layout/logic/home_layout_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/translations/locale_keys.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
      return Scaffold(
        body: context
            .read<HomeLayoutCubit>()
            .screens[context.read<HomeLayoutCubit>().currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: context.read<HomeLayoutCubit>().currentIndex,
          selectedItemColor: ColorsApp.mainGreen,
          backgroundColor: ColorsApp.white,
          unselectedItemColor: ColorsApp.gray,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            context.read<HomeLayoutCubit>().changeBottomNav(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: LocaleKeys.home.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.dashboard_outlined),
              label: LocaleKeys.categories.tr(),
              //  "Categories".tr(),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
             const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      );
    });
  }
}
