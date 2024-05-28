import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:space_x/features/crews/data/models/all_crews_model.dart';
import 'package:space_x/features/crews/data/repositories/crews_repository.dart';

part 'all_crews_state.dart';

class AllCrewsCubit extends Cubit<AllCrewsState> {
  AllCrewsCubit(
    this.allCrewsRepository,
  ) : super(AllCrewsInitial());
  final AllCrewsRepository allCrewsRepository;
  List<AllCrewsModel> allcrewsList = [];

  Future<void> getAllCrews() async {
    emit(AllCrewsLoading());
    var result = await allCrewsRepository.getAllCrews();
    result.fold((failure) {
      return emit(AllCrewsError(failure.errMessage));
    }, (crews) {
      allcrewsList = crews;
      return emit(AllCrewsSuccess(crews));
    });
  }
}
