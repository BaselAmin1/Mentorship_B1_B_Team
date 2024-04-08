
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_x/core/theming/text_styles.dart';

class RocketItemDetails extends StatelessWidget {
  const RocketItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Falcon 1',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12,),
        const ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text('Number Of Stages : '),
          trailing: Text('2',style: Styles.textStyle16,),
        ),
        const ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text('Number Of Boosters : '),
          trailing: Text('0',style: Styles.textStyle16),
        ),
        const ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text('First Flight : '),
          trailing: Text('2006-03-24',style: Styles.textStyle16),
        ),
         Align(
          alignment: Alignment.bottomRight,
          child: Transform.translate(
            offset: const Offset(0, 40),
            child: const Text('Space X',style: Styles.textStyle18,))),
         const Align(alignment: Alignment.bottomCenter,
        
        child: CircleAvatar(
          backgroundColor:  Color(0xff4B0384),
          child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),)
      ],
    );
  }
}
