import 'package:flutter/material.dart';
import 'package:space_x/core/theming/text_styles.dart';

class RocketMainDetailsSection extends StatelessWidget {
  const RocketMainDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Falcon 1',
          style: Styles.textStyle26.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.',
          style: Styles.textStyle16.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

