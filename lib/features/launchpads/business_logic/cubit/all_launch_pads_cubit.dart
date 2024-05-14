import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:space_x/features/launchpads/data/models/all_launchpads_model.dart';
import 'package:space_x/features/launchpads/data/repositories/launch_pads_repository.dart';

part 'all_launch_pads_state.dart';

class AllLaunchPadsCubit extends Cubit<AllLaunchPadsState> {
  AllLaunchPadsCubit(
    this.allLaunchPadsRepository,
  ) : super(AllLaunchPadsInitial());
  final AllLaunchPadsRepository allLaunchPadsRepository;

  List<AllLaunchPadsModel> allLaunchPadsList = [];
  Future<void> getAllLaunchPads() async {
    emit(AllLaunchPadsLoading());
    var result = await allLaunchPadsRepository.getAllLaunchPads();

    result.fold((failure) {
      emit(AllLaunchPadsError(failure.errMessage));
    }, (allLaunchPadsList) {
      this.allLaunchPadsList = allLaunchPadsList;
      emit(AllLaunchPadsSuccess(allLaunchPadsList));
    });
  }
}
