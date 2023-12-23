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
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 50.h,
        ),
        decoration: HomePageBackgroundColor(),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            const Wrap(
              children: [
                HomePageBodyItem(),
                HomePageBodyItem(),
                HomePageBodyItem(),
                HomePageBodyItem(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageBodyItem extends StatelessWidget {
  const HomePageBodyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.w,
          width: 80.w,
          margin: EdgeInsets.only(right: 20.w, bottom: 20.h),
          decoration: BoxDecoration(
            color: const Color(0xfff7eae0),
            borderRadius: BorderRadius.circular(50.r),
            border: Border.all(color: AppColors.outline, width: 0.5.w),
          ),
        ),
        Text(
          'data',
          style: TextStyle(color: const Color(0xfff7eae0)),
        ),
      ],
    );
  }
}
