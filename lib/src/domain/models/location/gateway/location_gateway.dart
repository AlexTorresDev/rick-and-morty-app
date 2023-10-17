import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';

abstract class LocationGateway {
  Future<Either<Failure, ApiResultModel<LocationModel>>> getLocations();
  Future<Either<Failure, LocationModel>> getLocation(int id);
}
