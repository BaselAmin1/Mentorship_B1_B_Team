import 'package:flutter/material.dart';
import 'package:space_x/core/theming/assets.dart';

class CustomRocketViewImage extends StatelessWidget {
  const CustomRocketViewImage({
    super.key,
    
  });

 
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset:  const Offset(0, -45),
        child: const Align(
          alignment: Alignment.centerRight,
          child: CircleAvatar(
            radius: 73,backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.rocketTestImage),
              radius: 70,
            ),
          ),
        ));
  }
}