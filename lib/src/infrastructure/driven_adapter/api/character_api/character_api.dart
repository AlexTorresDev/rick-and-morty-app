import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/exceptions.dart';
import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/core/network/client_service.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/gateway/character_gatway.dart';

class CharacterApi extends CharacterGateway {
  final ClientService _client;

  CharacterApi(this._client);

  @override
  Future<Either<Failure, CharacterModel>> getCharacter(int id) async {
    try {
      final response = await _client.get('/character/$id');

      if (response.statusCode == 200) {
        return Right(
          CharacterModel.fromJson(json.decode(utf8.decode(response.bodyBytes))),
        );
      } else {
        return const Left(
            ServerFailure('Failed to get the character from server'));
      }
    } on ServerException {
      return const Left(
          ServerFailure('Failed to get the character from server'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to server'));
    }
  }

  @override
  Future<Either<Failure, ApiResultModel<CharacterModel>>>
      getCharacters() async {
    try {
      final response = await _client.get('/character');

      if (response.statusCode == 200) {
        final res = json.decode(utf8.decode(response.bodyBytes));
        return Right(
          ApiResultModel<CharacterModel>.fromJson(
            res,
            (json) => CharacterModel.fromJson(json as Map<String, dynamic>),
          ),
        );
      } else {
        return const Left(
            ServerFailure('Failed to get characters from server'));
      }
    } on ServerException {
      return const Left(ServerFailure('Failed to get characters from server'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to server'));
    }
  }
}
