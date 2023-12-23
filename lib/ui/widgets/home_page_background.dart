import 'package:flutter/material.dart';
import 'package:rating_app/core/colors/app_colors.dart';

// ignore: non_constant_identifier_names
BoxDecoration HomePageBackgroundColor() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.bg1,
        AppColors.bg2,
        AppColors.bg3,
      ],
    ),
  );
}
