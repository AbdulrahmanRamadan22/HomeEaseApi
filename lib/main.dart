
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_ease/core/di/dependency_injection.dart';
// import 'package:home_ease/core/di/dependency_injection.dart';
import 'package:home_ease/core/helpers/my_bloc_observer.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/home_ease__app.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // setupGetIt();

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await CacheHelper.init();


  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,

    statusBarIconBrightness:
        Brightness.dark, //<-- For Android SEE HERE (dark icons)
  ));

    setupGetIt();


  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  var onBoarding = CacheHelper.getData(key: 'onBoarding');

// <<<<<<< HEAD
  //uId = CacheHelper.getData(key: 'uId');

  // uId != null ? uId = CacheHelper.getData(key: 'uId') : uId = null;

  // log(uId!);
  // log(uId.toString());

  var selectLanguageScreen = CacheHelper.getData(key: 'selectLanguageScreen');

  // String initialRoute;

  // if (selectLanguageScreen != null) {
  //   if (onBoarding != null) {
  //     if (uId != null) {
  //       email = CacheHelper.getData(key: 'email');
  //       if (email == "admin@gmail.com") {
  //         initialRoute = Routes.dashbordscreen;
  //       } else {
  //         initialRoute = Routes.homeLayout;
  //       }
  //     } else {
  //       initialRoute = Routes.loginScreen;
  //     }
  //   } else {
  //     initialRoute = Routes.onBoardingScreen;
  //   }
  // } else {
  //   initialRoute = Routes.selectLanguageScreen;
  // }

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('ar', 'EG'),
      // assetLoader: const CodegenLoader(),
      // saveLocale: true,
      child: const HomeEase(
          // initialRoute: initialRoute,
          ),
    ),
  );
}
