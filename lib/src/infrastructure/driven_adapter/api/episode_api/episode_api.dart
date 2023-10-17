import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/exceptions.dart';
import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/core/network/client_service.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/gateway/episode_gateway.dart';

class EpisodeApi extends EpisodeGateway {
  final ClientService _client;

  EpisodeApi(this._client);

  @override
  Future<Either<Failure, EpisodeModel>> getEpisode(int id) async {
    try {
      final response = await _client.get('/episode/$id');

      if (response.statusCode == 200) {
        return Right(
          EpisodeModel.fromJson(json.decode(utf8.decode(response.bodyBytes))),
        );
      } else {
        return const Left(
            ServerFailure('Failed to get the episode from server'));
      }
    } on ServerException {
      return const Left(
          ServerFailure('Failed to get the episode from server'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to server'));
    }
  }

  @override
  Future<Either<Failure, ApiResultModel<EpisodeModel>>>
      getEpisodes() async {
    try {
      final response = await _client.get('/episode');

      if (response.statusCode == 200) {
        final res = json.decode(utf8.decode(response.bodyBytes));
        return Right(
          ApiResultModel<EpisodeModel>.fromJson(
            res,
            (json) => EpisodeModel.fromJson(json as Map<String, dynamic>),
          ),
        );
      } else {
        return const Left(
            ServerFailure('Failed to get episodes from server'));
      }
    } on ServerException {
      return const Left(ServerFailure('Failed to get episodes from server'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to server'));
    }
  }
}
