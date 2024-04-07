import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x/core/theming/text_styles.dart';
import 'package:space_x/features/home/data/local/home_categories_date.dart';

class HomeCategoriesListViewItem extends StatelessWidget {
  HomeCategoriesListViewItem({
    super.key,
    required this.index,
  });
  int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            height: 290.h,
            width: 280.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  homeCategoriesData[index].name,
                  style: Styles.textStyle22.copyWith(
                    color: const Color(0xff4B0384),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  homeCategoriesData[index].details,
                  style: Styles.textStyle20,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff4B0384),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      switch (index) {
                        case 0:
                          // context.pushNamed(context, Routes.crewsScreen);
                          break;
                        case 1:
                          // context.pushNamed(context, Routes.rocketsScreen);
                          break;
                        case 2:
                          // context.pushNamed(context, Routes.launchpadsScreen);
                          break;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: homeCategoriesData[index].image,
         
        ),
      ],
    );
  }
}
