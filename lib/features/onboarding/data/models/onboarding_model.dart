import '../../../../core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitleOne;
  final String subTitleTwo;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitleOne,
    required this.subTitleTwo,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.assetsImagesOnboarding1,
    title: 'Peace Of Mind',
    subTitleOne: "CLUTCH HELPS YOU TO AVOID USING \n EXPIRED CAR PARTS, ",
    subTitleTwo: "WHICH CAN LEAD TO \n BREAK DOWNS AND SAFETY HAZARDS.",
  ),
  OnBoardingModel(
    imagePath: Assets.assetsImagesOnboarding2,
    title: "Save Money",
    subTitleOne: "CLUTCH CAN HELP YOU TO SAVE MONEY \n ",
    subTitleTwo:
        "BY PREVENTING YOU FROM HAVING TO \n REPLACE CAR PARTS THAT DIDN’T EXPIRE.",
  ),
  OnBoardingModel(
    imagePath: Assets.assetsImagesOnboarding3,
    title: "Extend the life of your car",
    subTitleOne:
        "BY USING CLUTCH TO TRACK THE EXPIRY \n DATES OF YOUR CAR PARTS,",
    subTitleTwo: " YOU CAN \n HELP TO EXTEND THE LIFE OF YOUR CAR.",
  ),
];
