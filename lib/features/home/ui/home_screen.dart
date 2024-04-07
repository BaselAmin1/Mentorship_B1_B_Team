import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x/core/theming/assets.dart';
import 'package:space_x/core/theming/text_styles.dart';
import 'package:space_x/features/home/data/local/home_categories_date.dart';
import 'package:space_x/features/home/ui/widgets/home_categories_list_view_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.assetsImagesHomeBackGroundImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
            ),
            Text(
              'Discover SpaceX',
              style: Styles.textStyle26.copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            SizedBox(
              height: 490.h,
              width: double.infinity,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return HomeCategoriesListViewItem(
                    index: index,
                  );
                },
                itemCount: homeCategoriesData.length,
                viewportFraction: 0.7,
                scale: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
