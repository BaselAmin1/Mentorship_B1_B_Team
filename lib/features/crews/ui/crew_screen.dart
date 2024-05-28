import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:space_x/features/crews/business_logic/cubit/all_crews_cubit.dart';

import 'package:space_x/features/crews/ui/widgets/crew_gridview_item.dart';

class CrewsScreen extends StatelessWidget {
  const CrewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCrewsCubit, AllCrewsState>(
      builder: (context, state) {
        if (state is AllCrewsSuccess) {
          final crews = state.allCrewsList;
          return Scaffold(
              body: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 2 / 3.1),
                  itemCount: crews.length,
                  itemBuilder: (context, index) {
                    return CrewMemberItem(
                        crewMember: crews[index], isNetworkConnected: true);
                  }));
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
