import 'package:flutter/material.dart';
import 'package:space_x/core/theming/assets.dart';

class CustomRocketViewImage extends StatelessWidget {
  const CustomRocketViewImage({
    super.key, required this.alignmentGeometry, required this.radius,
    
  });
final AlignmentGeometry alignmentGeometry;

final double radius;
 
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset:  const Offset(0, -45),
        child:  Align(
          alignment: alignmentGeometry,
          child:  CircleAvatar(
            radius: radius+3,backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: const AssetImage(Assets.rocketTestImage),
              radius: radius,
            ),
          ),
        ));
  }
}