// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/di/dependency_injection.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/features/add_address/ui/add_address_screen.dart';
import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
import 'package:home_ease/features/auth/login/ui/login_screen.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
import 'package:home_ease/features/auth/register/ui/register_screen.dart';
import 'package:home_ease/features/categorie/data/models/category_model.dart';
import 'package:home_ease/features/categorie/ui/categories_scraan.dart';
import 'package:home_ease/features/company/ui/company_screen.dart';
import 'package:home_ease/features/contact_us/logic/contactus_cubit.dart';
import 'package:home_ease/features/contact_us/ui/contact_us_screen.dart';
import 'package:home_ease/features/history/history_screen.dart';
import 'package:home_ease/features/home/ui/home_screen.dart';
import 'package:home_ease/features/home_layout/logic/home_layout_cubit.dart';
import 'package:home_ease/features/home_layout/ui/home_layout_scraan.dart';
import 'package:home_ease/features/service/ui/contract%20_service_screen.dart';

import 'package:home_ease/features/service/ui/hourly_service_screen.dart';
import 'package:home_ease/features/mywallet/ui/my_wallet_screen.dart';
import 'package:home_ease/features/notification/ui/notification_screen.dart';
import 'package:home_ease/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:home_ease/features/orderdetalis/ui/order_detalis_screen.dart';
import 'package:home_ease/features/payment/ui/payment_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/features/resetpassword/ui/reset_password_screen.dart';
import 'package:home_ease/features/select_address/ui/select_address_screen.dart';
import 'package:home_ease/features/select_language/ui/select_language_screen.dart';
import 'package:home_ease/features/select_language/ui/terms_and_conditions.dart';
import 'package:home_ease/features/service/service_type/service_type.dart';

class AppRouter {
  AppRouter();

  Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: non_constant_identifier_names

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case Routes.contactUsScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ContactUsCubit>(),
            child: const ContactUS(),
          ),
        );

      case Routes.historyScreen:
        return MaterialPageRoute(
          builder: (context) => const HistoryScreen(),
        );

      case Routes.serviceType:
        final category = settings.arguments as Categories;
        return MaterialPageRoute(
          builder: (context) => ServiceType(
            category: category,
          ),
        );

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case Routes.selectLanguageScreen:
        return MaterialPageRoute(
          builder: (context) => const SelectLanguageScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );

      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );
      case Routes.paymentScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const PaymentScreen(),
        );

      case Routes.selectAddressScreen:
        return MaterialPageRoute(
          builder: (context) => const SelectAddress(),
        );
      case Routes.addAddressScreen:
        return MaterialPageRoute(
          builder: (context) => const AddAddressScreen(),
        );
      case Routes.hourlyServiceScreen:
        final category = settings.arguments as Categories;
        return MaterialPageRoute(
          builder: (context) => HourlyServiceScreen(
            category: category,
          ),
        );
      case Routes.contractServiceScreen:
        final category = settings.arguments as Categories;

        return MaterialPageRoute(
          builder: (context) => ContractServiceScreen(
            category: category,
          ),
        );

      case Routes.companyscreen:
        return MaterialPageRoute(
          builder: (context) => const CompanyScreen(),
        );
      case Routes.mywalletscreen:
        return MaterialPageRoute(
          builder: (context) => const MyWalletScreen(),
        );
      case Routes.orderDetalisScreen:
        return MaterialPageRoute(
          builder: (context) => const OrderDetalis(),
        );

      // case Routes.dashbordscreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const DashBordScreen(),
      //   );

      // case Routes.addcategoriesdashbordscreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const AddCategores(),
      //   );

      // case Routes.forgetPasswordScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => BlocProvider(
      //       create: (context) => getIt<ResetpasswordCubit>(),
      //       child: const ForgetPasswordScreen(),
      //     ),
      //   );
      // case Routes.profileScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const ProfileScreen(),
      //   );

      // case Routes.editProfileScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const EditProfileScreen(),
      //   );
      case Routes.categoriesScreen:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );

      // case Routes.adminCategoriesScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => BlocProvider(
      //       create: (context) => CategorieCubit(),
      //       child: const AdminCategoriesScreen(),
      //     ),
      //   );
      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeLayoutCubit(),
            child: const HomeLayoutScreen(),
          ),
        );

      case Routes.termsAndConditions:
        return MaterialPageRoute(
          builder: (context) => const TermsAndConditions(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
