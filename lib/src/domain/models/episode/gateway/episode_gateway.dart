import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';

abstract class EpisodeGateway {
  Future<Either<Failure, ApiResultModel<EpisodeModel>>> getEpisodes();
  Future<Either<Failure, EpisodeModel>> getEpisode(int id);
}
