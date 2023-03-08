import 'package:flutter/material.dart';
import 'package:loading_emulator/theme/colors.dart';

abstract class AppTextStyles {
  static TextStyle shantellSans24w600 = TextStyle(
    fontFamily: 'ShantellSans',
    fontSize: 24,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    color: AppColors.color660066,
  );

  static TextStyle shantellSans18w400 = TextStyle(
    fontFamily: 'ShantellSans',
    fontSize: 18,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    color: AppColors.color660066,
  );
}

//? font height / font size = height