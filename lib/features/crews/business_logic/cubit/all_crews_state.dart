part of 'all_crews_cubit.dart';

sealed class AllCrewsState extends Equatable {
  const AllCrewsState();

  @override
  List<Object> get props => [];
}

final class AllCrewsInitial extends AllCrewsState {}

final class AllCrewsLoading extends AllCrewsState {}

final class AllCrewsSuccess extends AllCrewsState {
  final List<AllCrewsModel> allCrewsList;
  const AllCrewsSuccess(
    this.allCrewsList,
  );
  @override
  List<Object> get props => [allCrewsList];
}

final class AllCrewsError extends AllCrewsState {
  final String message;
  const AllCrewsError(
    this.message,
  );
  @override
  List<Object> get props => [message];
}
