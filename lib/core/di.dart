import 'package:get_it/get_it.dart';
import 'package:space_x/core/Api/api_services.dart';
import 'package:space_x/core/Api/dio_factory.dart';
import 'package:space_x/features/launchpads/business_logic/cubit/all_launch_pads_cubit.dart';
import 'package:space_x/features/launchpads/data/repositories/launch_pads_repository.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(DioFactory()));

  getIt.registerLazySingleton<AllLaunchPadsRepository>(
      () => AllLaunchPadsRepository(getIt()));
  getIt.registerFactory<AllLaunchPadsCubit>(() => AllLaunchPadsCubit(getIt()));
}
