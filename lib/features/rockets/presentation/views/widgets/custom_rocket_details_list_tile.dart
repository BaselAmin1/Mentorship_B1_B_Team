import 'package:flutter/material.dart';
import 'package:space_x/core/theming/text_styles.dart';

class CustomRocketDetailsListTile extends StatelessWidget {
  const CustomRocketDetailsListTile({
    super.key, required this.title, required this.data,
  });
  final String title,data;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.white54),
        ),
      ),child: ListTile(
        title: Text(title,style: Styles.textStyle16.copyWith(color: Colors.grey[200]),),
        trailing: Text(data,style:Styles.textStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
    
      ),
    );
  }
}
