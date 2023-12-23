import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_app/core/colors/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16.w),
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.textMain,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: AppColors.outline,
                  width: 0.5.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
