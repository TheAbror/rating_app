import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_app/core/colors/app_colors.dart';
import 'package:rating_app/ui/bloc/home_bloc.dart';

class HomePageBodyItem extends StatelessWidget {
  final String text;
  final String icon;
  final HomeState state;

  const HomePageBodyItem({
    super.key,
    required this.text,
    required this.icon,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: Column(
        children: [
          Container(
            height: 80.w,
            width: 80.w,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 247, 224),
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
              color: !state.isDark ? AppColors.homeIcons : AppColors.textMain,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
