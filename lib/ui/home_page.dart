import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating_app/ui/bloc/home_bloc.dart';
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
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 27.w),
        decoration: HomePageBackgroundColor(),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SearchAnchor(builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () => controller.openView(),
                leading: const Icon(Icons.search),
                trailing: <Widget>[
                  Tooltip(
                    message: 'Change brightness mode',
                    child: IconButton(
                      isSelected: true,
                      onPressed: () => context.read<HomeBloc>().changeBrightness(),
                      icon: const Icon(Icons.wb_sunny_outlined),
                      selectedIcon: const Icon(Icons.brightness_2_outlined),
                    ),
                  )
                ],
              );
            }, suggestionsBuilder: (BuildContext context, SearchController controller) {
              return List<ListTile>.generate(5, (int index) {
                final String item = 'item $index';
                return ListTile(
                  title: Text(item),
                );
              });
            }),
            SizedBox(height: 45.h),
            Center(
              child: Wrap(
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
                  HomePageBodyItem(text: 'Airports', icon: 'assets/icons/airport.png'),
                  HomePageBodyItem(text: 'Banks', icon: 'assets/icons/bank.png'),
                  HomePageBodyItem(text: 'Bridges', icon: 'assets/icons/bridges.png'),
                  HomePageBodyItem(text: 'Cafes', icon: 'assets/icons/cafe.png'),
                  HomePageBodyItem(text: 'Cities', icon: 'assets/icons/city.png'),
                  HomePageBodyItem(text: 'Laptop', icon: 'assets/icons/laptop.png'),
                  HomePageBodyItem(text: 'Monitor', icon: 'assets/icons/monitor.png'),
                  HomePageBodyItem(text: 'Phone', icon: 'assets/icons/phone.png'),
                  HomePageBodyItem(text: 'Browser', icon: 'assets/icons/web-browser.png'),
                  // will repeat
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
                  HomePageBodyItem(text: 'Airports', icon: 'assets/icons/airport.png'),
                  HomePageBodyItem(text: 'Banks', icon: 'assets/icons/bank.png'),
                  HomePageBodyItem(text: 'Bridges', icon: 'assets/icons/bridges.png'),
                  HomePageBodyItem(text: 'Cafes', icon: 'assets/icons/cafe.png'),
                  HomePageBodyItem(text: 'Cities', icon: 'assets/icons/city.png'),
                  HomePageBodyItem(text: 'Laptop', icon: 'assets/icons/laptop.png'),
                  HomePageBodyItem(text: 'Monitor', icon: 'assets/icons/monitor.png'),
                  HomePageBodyItem(text: 'Phone', icon: 'assets/icons/phone.png'),
                  HomePageBodyItem(text: 'Browser', icon: 'assets/icons/web-browser.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
