import 'package:dio/dio.dart';
import 'package:space_x/core/Api/dio_factory.dart';
import 'package:space_x/core/Api/end_points.dart';

class ApiServices {
  ApiServices(this._dioFactory);
  final DioFactory _dioFactory;

    Future<Response?> getAllLaunchPads() async {
    return _dioFactory.get(
      endPoint:
          EndPoints.allLaunchPads,
    );
  }
}
