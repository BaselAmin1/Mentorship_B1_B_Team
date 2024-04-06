import 'package:get_it/get_it.dart';
import 'package:space_x/core/Api/api_services.dart';
import 'package:space_x/core/Api/dio_factory.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(DioFactory()));

}
