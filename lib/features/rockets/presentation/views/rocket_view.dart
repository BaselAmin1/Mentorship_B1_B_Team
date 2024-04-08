import 'package:flutter/material.dart';
import 'package:space_x/features/rockets/presentation/views/widgets/rockets_view_body.dart';

class RocketsView extends StatelessWidget {
  const RocketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: RocketsViewBody(),
    );
  }
}