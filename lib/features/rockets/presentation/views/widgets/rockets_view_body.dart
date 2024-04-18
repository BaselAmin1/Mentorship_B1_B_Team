import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_x/core/theming/assets.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rockets_list_view.dart';

class RocketsViewBody extends StatelessWidget {
  const RocketsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesHomeBackGroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: const RocketsListView(),
    );
  }
}

