import 'package:flutter/material.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/custom_rocket_view_image.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rocket_item_details.dart';


class RocketsViewItem extends StatelessWidget {
  const RocketsViewItem({super.key});

  @override
  Widget build(BuildContext context) {
   
    var height= MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Align(alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
            height:height*0.41,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child:  const RocketItemDetails(),
          ),
        ),
          
        const CustomRocketViewImage(alignmentGeometry: Alignment.centerRight, radius: 70,),
              
          
      ],
    );
  }
}


