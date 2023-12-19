import 'package:flutter/material.dart';

import '../app_colors.dart';

class OnboardingTextStyle {
  static const TextStyle introduction = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: AppColors.blackColor,
      height: 36 / 24);
  static const TextStyle description = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreyColor,
  );
  static const TextStyle reviewTitle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12.0,
    height: 18 / 12,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static const TextStyle reviewText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    height: 19 / 10,
    color: AppColors.whiteColor,
  );

  static const TextStyle links = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreyColor,
  );
}
