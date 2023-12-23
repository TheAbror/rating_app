import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_app/core/colors/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff334554),
              Color(0xff0b2435),
              Color(0xff091f2c),
            ],
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.textMain,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.outline, width: 0.5.w),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
