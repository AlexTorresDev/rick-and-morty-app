import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

abstract class CharacterGateway {
  Future<Either<Failure, ApiResultModel<CharacterModel>>> getCharacters();
  Future<Either<Failure, CharacterModel>> getCharacter(int id);
}
