import 'package:flutter/material.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rockets_view_item.dart';

class RocketsListView extends StatelessWidget {
  const RocketsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 80),
        itemBuilder: (context,index)=>const Padding(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: RocketsViewItem(),
      ),itemCount: 10,
      scrollDirection: Axis.vertical,
      ),
    );
  }
}


