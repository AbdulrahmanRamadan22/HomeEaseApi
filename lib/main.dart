import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_ease/core/di/dependency_injection.dart';
// import 'package:home_ease/core/di/dependency_injection.dart';
import 'package:home_ease/core/helpers/my_bloc_observer.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/routing/app_router.dart';
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

  setupGetIt();

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await CacheHelper.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,

    statusBarIconBrightness:
        Brightness.dark, //<-- For Android SEE HERE (dark icons)
  ));

  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();


  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('ar', 'EG'),
      // assetLoader: const CodegenLoader(),
      // saveLocale: true,
      child: HomeEase(
        appRouter: AppRouter(),
        // initialRoute: initialRoute,
      ),
    ),
  );
}
