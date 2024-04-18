import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:space_x/core/theming/assets.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/custom_rocket_details_list_tile.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/custom_rocket_view_image.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rocket_main_details_section.dart';

class RocketDetailsViewBody extends StatelessWidget {
  const RocketDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Image.asset(
                Assets.backGroundImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  CustomRocketViewImage(
                    alignmentGeometry: Alignment.topCenter,
                    radius: 100,
                  ),
                  RocketMainDetailsSection(),
                  SizedBox(
                    height: 30,
                  ),
                  CustomRocketDetailsListTile(title: 'Height', data: '22.25',),
                  CustomRocketDetailsListTile(title: 'mass', data: '30146 Kg',),
                  CustomRocketDetailsListTile(title: 'Height', data: '22.25',),
                  CustomRocketDetailsListTile(title: 'Cost Per Launch', data: '6700000',),
                  CustomRocketDetailsListTile(title: 'Success Rate', data: '40%',),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

