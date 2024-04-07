import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x/core/theming/assets.dart';

class HomeCategoriesModel {
  String name;
  String details;
  Widget image;

  HomeCategoriesModel({
    required this.name,
    required this.details,
    required this.image,
  });
}

List<HomeCategoriesModel> homeCategoriesData = [
  HomeCategoriesModel(
    name: "Crews",
    details: "Browse through the list of crows",
    image: Image.asset(
      Assets.assetsImagesCrewImage,
      height: 250.h,
    ),
  ),
  HomeCategoriesModel(
    name: "Rockets",
    details: "Browse through the list of rockets",
    image: Image.asset(
      Assets.assetsImagesRocketImage,
      height: 250.h,
    ),
  ),
  HomeCategoriesModel(
    name: "Launchpads",
    details: "Browse through the list of launchpads",
    image: Image.asset(
      Assets.assetsImagesLaunchpadImage,
      height: 250.h,
    ),
  ),
];
