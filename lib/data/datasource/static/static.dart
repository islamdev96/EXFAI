import 'package:exfai/data/model/onboardingmodel.dart';

import '../../../all_export.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "chooseProduct".tr,
      body: "weHavea100kProduct".tr,
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "easyAndSafe".tr,
      body: "youCanPay".tr,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "trackYourOrder".tr,
      body: "theOrderCanBeTracked".tr,
      image: AppImageAsset.onBoardingImageThree),

  // OnBoardingModel(
  //     title: "Fast Delivery",
  //     body:
  //         "We Have a 100k Product , Choose \n Your Product From Our E-commerce Shop",
  //     image: AppImageAsset.onBoardingImageFour),
];
