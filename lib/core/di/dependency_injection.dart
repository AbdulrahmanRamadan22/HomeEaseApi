import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:home_ease/core/networking/remote/api_service.dart';
import 'package:home_ease/core/networking/remote/dio_factory.dart';
import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
import 'package:home_ease/features/auth/login/data/repo/login_repo.dart';
import 'package:home_ease/features/auth/register/data/repos/register_repo.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
import 'package:home_ease/features/categorie/data/repo/category_repo.dart';
import 'package:home_ease/features/categorie/logic/categorie_cubit.dart';
import 'package:home_ease/features/contact_us/data/contact_us_repo.dart';
import 'package:home_ease/features/contact_us/logic/contactus_cubit.dart';
import 'package:home_ease/features/home/data/repo/home_repo.dart';
import 'package:home_ease/features/home/logic/home_cubit.dart';
import 'package:home_ease/features/service/data/repo/company_repo.dart';
import 'package:home_ease/features/service/logic/company_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //Register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  getIt.registerLazySingleton<CategoryRepo>(() => CategoryRepo(getIt()));
  getIt.registerFactory<CategoryCubit>(() => CategoryCubit(getIt()));

  getIt.registerLazySingleton<ContactUsRepo>(() => ContactUsRepo(getIt()));
  getIt.registerFactory<ContactUsCubit>(() => ContactUsCubit(getIt()));

  getIt.registerLazySingleton<CompanyRepo>(() => CompanyRepo(getIt()));
  getIt.registerFactory<CompanyCubit>(() => CompanyCubit(getIt()));

  // getIt.registerLazySingleton<ForGetPasswordRepo>(() => ForGetPasswordRepo(getIt()));
  // getIt.registerFactory<ResetpasswordCubit>(() => ResetpasswordCubit(getIt()));

  // getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));
}
