import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/gateway/character_gatway.dart';

class CharacterUseCase {
  const CharacterUseCase(this._characterGateway);

  final CharacterGateway _characterGateway;

  Future<Either<Failure, ApiResultModel<CharacterModel>>> getCharacters() async {
    return await _characterGateway.getCharacters();
  }

  Future<Either<Failure, CharacterModel>> getCharacter(int id) async {
    return await _characterGateway.getCharacter(id);
  }
}
