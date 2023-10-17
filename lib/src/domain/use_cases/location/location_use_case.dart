import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/gateway/location_gateway.dart';

class LocationUseCase {
  const LocationUseCase(this._locationGateway);

  final LocationGateway _locationGateway;

  Future<Either<Failure, ApiResultModel<LocationModel>>> getLocations() async {
    return await _locationGateway.getLocations();
  }

  Future<Either<Failure, LocationModel>> getLocation(int id) async {
    return await _locationGateway.getLocation(id);
  }
}
