import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/crews/business_logic/cubit/all_crews_cubit.dart';

class CrewsScreen extends StatelessWidget {
  const CrewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCrewsCubit, AllCrewsState>(
      builder: (context, state) {
        return const Scaffold();
      },
    );
  }
}
