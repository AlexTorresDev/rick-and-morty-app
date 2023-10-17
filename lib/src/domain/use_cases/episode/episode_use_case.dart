import 'package:dartz/dartz.dart';

import 'package:rick_and_morty_app/src/core/errors/failure.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/gateway/episode_gateway.dart';

class EpisodeUseCase {
  const EpisodeUseCase(this._episodeGateway);

  final EpisodeGateway _episodeGateway;

  Future<Either<Failure, ApiResultModel<EpisodeModel>>> getEpisodes() async {
    return await _episodeGateway.getEpisodes();
  }

  Future<Either<Failure, EpisodeModel>> getEpisode(int id) async {
    return await _episodeGateway.getEpisode(id);
  }
}
