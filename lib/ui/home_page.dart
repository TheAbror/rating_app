import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_app/ui/widgets/home_page_background.dart';
import 'package:rating_app/ui/widgets/home_page_body_item.dart';

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
            Wrap(
              spacing: 27.w,
              runSpacing: 15.h,
              children: const [
                HomePageBodyItem(text: 'Schools', icon: 'assets/icons/school.png'),
                HomePageBodyItem(text: 'Restaurants', icon: 'assets/icons/restaurant.png'),
                HomePageBodyItem(text: 'Parks', icon: 'assets/icons/park.png'),
                HomePageBodyItem(text: 'Cars', icon: 'assets/icons/car-chevrolet.png'),
                HomePageBodyItem(text: 'Fast Food', icon: 'assets/icons/fastfood.png'),
                HomePageBodyItem(text: 'Hotels', icon: 'assets/icons/hotel.png'),
                HomePageBodyItem(text: 'Kindergartens', icon: 'assets/icons/kindergarten.png'),
                HomePageBodyItem(text: 'Social Media', icon: 'assets/icons/SocialMedia.png'),
                HomePageBodyItem(text: 'Software Engineers', icon: 'assets/icons/softwareE.png'),
                HomePageBodyItem(text: 'Software Engineers', icon: 'assets/icons/softwareE.png'),
                HomePageBodyItem(text: 'Universities', icon: 'assets/icons/student.png'),
                HomePageBodyItem(text: 'Video Platforms', icon: 'assets/icons/videoPlatform.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
