import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_x/core/routing/routes.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rockets_view_item.dart';

class RocketsListView extends StatelessWidget {
  const RocketsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 80),
      itemBuilder: (context,index)=> Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, Routes.kRocketDetailsView,);
        },
        child: const RocketsViewItem()),
    ),itemCount: 10,
    scrollDirection: Axis.vertical,
    );
  }
}


