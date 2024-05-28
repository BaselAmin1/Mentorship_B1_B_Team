import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:space_x/core/Api/api_services.dart';
import 'package:space_x/core/Api/failures.dart';

import 'package:space_x/features/crews/data/models/all_crews_model.dart';

class AllCrewsRepository {
  final ApiServices apiServices;

  AllCrewsRepository(this.apiServices);

  Future<Either<Failure, List<AllCrewsModel>>> getAllCrews() async {
    try {
      var response = await apiServices.getAllCrews();
      List<AllCrewsModel> allCrewsList = [];

      response?.data.forEach((element) {
        allCrewsList.add(AllCrewsModel.fromJson(element));
      });

      return right(allCrewsList);
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
