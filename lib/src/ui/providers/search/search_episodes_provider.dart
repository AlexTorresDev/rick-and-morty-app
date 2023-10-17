import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_notifier.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';
import 'package:rick_and_morty_app/src/ui/providers/episode/episode_provider.dart';

final searchEpisodesProvider =
    StateNotifierProvider.autoDispose<SearchNotifier<EpisodeModel>, SearchState<EpisodeModel>>((ref) {
  final episodeProv = ref.watch(episodeProvider);

  if (episodeProv.isLoading) {
    return SearchNotifier()..mapEventsToState(const Loading());
  }

  final episodeList = episodeProv.whenOrNull(data: (data) => data);

  return SearchNotifier()
    ..mapEventsToState(
      UpdateListItems(
        modelList: episodeList ?? ApiResultModel.empty(),
      ),
    );
});
