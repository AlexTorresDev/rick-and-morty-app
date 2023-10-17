import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/config/providers/episode_provider.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';

final episodeProvider = FutureProvider.autoDispose<ApiResultModel<EpisodeModel>>((ref) {
  return ref.read(episodeUseCaseProvider).getEpisodes().then((value) => value.fold(
        (failure) => ApiResultModel<EpisodeModel>.empty(),
        (episodeList) => episodeList,
      ));
});
