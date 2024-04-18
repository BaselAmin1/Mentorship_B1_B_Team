part of 'all_launch_pads_cubit.dart';

sealed class AllLaunchPadsState extends Equatable {
  const AllLaunchPadsState();

  @override
  List<Object> get props => [];
}

final class AllLaunchPadsInitial extends AllLaunchPadsState {}

final class AllLaunchPadsLoading extends AllLaunchPadsState {}

final class AllLaunchPadsSuccess extends AllLaunchPadsState {
  final List<AllLaunchPadsModel> allLaunchPadsList;
  const AllLaunchPadsSuccess(
    this.allLaunchPadsList,
  );
  @override
  List<Object> get props => [allLaunchPadsList];
}

final class AllLaunchPadsError extends AllLaunchPadsState {
  final String message;
  const AllLaunchPadsError(
    this.message,
  );
  @override
  List<Object> get props => [message];
}
