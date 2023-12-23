import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_app/core/colors/app_colors.dart';
import 'package:rating_app/ui/widgets/home_page_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: HomePageBackgroundColor(),
        child: ListView(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xfff7eae0),
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(color: AppColors.outline, width: 0.5.w),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
