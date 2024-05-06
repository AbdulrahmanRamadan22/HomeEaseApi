
import 'package:home_ease/translations/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';


class OnBoardingModel {
  String image;
  String title;
  String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

final List<OnBoardingModel> boarding = [
    OnBoardingModel(
      body:
       LocaleKeys.findAllYourHouseNeedsInOnePlace.tr(),
      // "Find all your house needs in one place.\nWe provide every service to make your\nhome experience smooth.".tr(),
      image: "assets/svgs/boarding1.svg",
      title: LocaleKeys.easyProcess.tr(),

      // "Easy Process".tr(),
    ),
    OnBoardingModel(
      body: LocaleKeys.weHaveTheBestInClassIndividualsWorkingJustForYou.tr(),
      // "We have the best in class individuals\nworking just for you. They are well\ntrained and capable of handling\nanything you need.".tr(),
      image: "assets/svgs/boarding2.svg",
      title: LocaleKeys.expertPeople.tr(),
      // "Expert People".tr(),
    ),
    OnBoardingModel(
      body: LocaleKeys
          .weHaveAllTheHouseholdServicesYouNeedOnADailyBasisWithEasyAccess
          .tr(),
      // "We have all the household services\nyou need on a daily basis with\neasy access".tr(),
      image: "assets/svgs/boarding3.svg",
      title: LocaleKeys.allInOnePlace.tr(),
      // "All In One Place".tr(),
    ),
  ];