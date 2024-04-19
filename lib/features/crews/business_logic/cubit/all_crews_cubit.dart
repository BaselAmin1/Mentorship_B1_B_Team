import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:space_x/features/Crews/data/models/all_Crews_model.dart';
import 'package:space_x/features/crews/data/models/all_crews_model.dart';
import 'package:space_x/features/crews/data/repositories/crews_repository.dart';

part 'all_crews_state.dart';

class AllCrewsCubit extends Cubit<AllCrewsState> {
  AllCrewsCubit(
    this.allCrewsRepository,
  ) : super(AllCrewsInitial());
  final AllCrewsRepository allCrewsRepository;

  Future<void> getAllCrews() async {
    emit(AllCrewsLoading());
    var result = await allCrewsRepository.getAllCrews();
    result.fold((failure) {
      emit(AllCrewsError(failure.errMessage));
    }, (allCrewsList) {
      emit(AllCrewsSuccess(allCrewsList));
    });
  }
}
