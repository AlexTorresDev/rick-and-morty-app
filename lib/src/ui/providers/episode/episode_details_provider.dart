import 'package:rick_and_morty_app/src/config/providers/episode_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';

final episodeDetailsProvider =
    FutureProvider.autoDispose.family<EpisodeModel, int>((ref, id) {
  return ref.watch(episodeUseCaseProvider).getEpisode(id).then((cat) {
    return cat.fold((l) => EpisodeModel.empty(), (r) => r);
  });
});
