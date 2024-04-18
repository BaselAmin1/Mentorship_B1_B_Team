import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/launchpads/business_logic/cubit/all_launch_pads_cubit.dart';

class LaunchPadsScreen extends StatelessWidget {
  const LaunchPadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllLaunchPadsCubit, AllLaunchPadsState>(
      builder: (context, state) {
        return const Scaffold();
      },
    );
  }
}
