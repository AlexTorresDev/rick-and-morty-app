import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/exceptions.dart';
import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/core/network/client_service.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/gateway/location_gateway.dart';

class LocationApi extends LocationGateway {
  final ClientService _client;

  LocationApi(this._client);

  @override
  Future<Either<Failure, LocationModel>> getLocation(int id) async {
    try {
      final response = await _client.get('/location/$id');

      if (response.statusCode == 200) {
        return Right(
          LocationModel.fromJson(json.decode(utf8.decode(response.bodyBytes))),
        );
      } else {
        return const Left(
            ServerFailure('Failed to get the location from server'));
      }
    } on ServerException {
      return const Left(
          ServerFailure('Failed to get the location from server'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to server'));
    }
  }

  @override
  Future<Either<Failure, ApiResultModel<LocationModel>>>
      getLocations() async {
    try {
      final response = await _client.get('/location');

      if (response.statusCode == 200) {
        final res = json.decode(utf8.decode(response.bodyBytes));
        return Right(
          ApiResultModel<LocationModel>.fromJson(
            res,
            (json) => LocationModel.fromJson(json as Map<String, dynamic>),
          ),
        );
      } else {
        return const Left(
            ServerFailure('Failed to get locations from server'));
      }
    } on ServerException {
      return const Left(ServerFailure('Failed to get locations from server'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to server'));
    }
  }
}
