import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/di/dependency_injection.dart';
// import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/routing/app_router.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/home/logic/home_cubit.dart';
// import 'package:home_ease/features/profile/logic/profile_cubit.dart';

class HomeEase extends StatelessWidget {
  final AppRouter appRouter;
    final String? initialRoute;

  const HomeEase(
      {super.key, required this.appRouter, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        onGenerateRoute: AppRouter().generateRoute,
        theme: ThemeData(
          primaryColor: mainGreen,
          primarySwatch: mainGreen,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(titleTextStyle: TextStyles.font18Black700),
          useMaterial3: true,
          // primarySwatch: mainGreen,
          fontFamily: 'Quicksand',
        ),
        initialRoute: initialRoute,
      ),
    );
  }
}
