import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:space_x/core/Api/api_services.dart';
import 'package:space_x/core/Api/failures.dart';
import 'package:space_x/features/launchpads/data/models/all_launchpads_model.dart';

class AllLaunchPadsRepository {
  final ApiServices apiServices;

  AllLaunchPadsRepository(this.apiServices);

  Future<Either<Failure, List<AllLaunchPadsModel>>> getAllLaunchPads() async {
    try {
      var response = await apiServices.getAllLaunchPads();
      List<AllLaunchPadsModel> allLaunchPadsList = [];

      response?.data.forEach((element) {
        allLaunchPadsList.add(AllLaunchPadsModel.fromJson(element));
      });

      return right(allLaunchPadsList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
