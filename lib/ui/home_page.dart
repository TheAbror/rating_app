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
        padding: EdgeInsets.symmetric(vertical: 50.h),
        decoration: HomePageBackgroundColor(),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            const Wrap(
              children: [
                HomePageBodyItem(text: 'Schools', icon: 'assets/icons/icons8-school-100.png'),
                // HomePageBodyItem(text: 'Restaurants'),
                // HomePageBodyItem(text: 'Parks'),
                // HomePageBodyItem(text: 'Coffee'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageBodyItem extends StatelessWidget {
  final String text;
  final String icon;

  const HomePageBodyItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 22.w, bottom: 25.h),
      child: Column(
        children: [
          Container(
            height: 80.w,
            width: 80.w,
            decoration: BoxDecoration(
              color: AppColors.homeIcons,
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(color: AppColors.outline, width: 0.5.w),
            ),
            child: Image.asset(icon),
          ),
          SizedBox(height: 5.h),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.homeIcons,
            ),
          ),
        ],
      ),
    );
  }
}
