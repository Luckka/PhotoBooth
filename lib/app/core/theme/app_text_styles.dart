import 'package:flutter/material.dart';

import '../shared/app_constantes.dart';
import 'app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const titleLarge = TextStyle(
    fontSize: 24,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w700,
    color: AppColors.blackText
  );

  static const scoreTitle = TextStyle(
    fontSize: 50,
    fontFamily: AppConstants.montserratFontFamily,
    fontWeight: FontWeight.w500,
    color: AppColors.blackText
  );

  static const titleMedium = TextStyle(
    
    fontSize: 24,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w700,
    color: AppColors.white
  );

  static const titleMediumMontserrat = TextStyle(
    
    fontSize: 24,
    fontFamily: AppConstants.montserratFontFamily,
    fontWeight: FontWeight.w500,
    color: AppColors.white
  );

  static const titleCategory = TextStyle(
    fontSize: 16,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.blackText
  );

  static const labelInputText = TextStyle(
    fontSize: 16,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.blackText
  );

  static const titleAppBar = TextStyle(
    fontSize: 18,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w700,
    color: AppColors.blackText
  );
  static const labelMedium = TextStyle(
    fontSize: 14,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w400,
  );
  
  static const bodyMedium = TextStyle(
    fontSize: 12,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w400,
   
  );
  static const bodySmall = TextStyle(
    fontSize: 12,
    fontFamily: AppConstants.archivoNarrowFontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final appBarTitle = AppTextStyles.titleMedium.copyWith(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );
}
