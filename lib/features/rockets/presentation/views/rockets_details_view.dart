import 'package:flutter/material.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rocket_details_view_body.dart';

class RocketDetailsView extends StatelessWidget {
  const RocketDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RocketDetailsViewBody(),
    );
  }
}

