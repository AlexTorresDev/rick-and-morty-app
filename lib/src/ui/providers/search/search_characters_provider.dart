import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_notifier.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';
import 'package:rick_and_morty_app/src/ui/providers/character/character_provider.dart';

final searchCharactersProvider =
    StateNotifierProvider.autoDispose<SearchNotifier<CharacterModel>, SearchState<CharacterModel>>((ref) {
  final characterProv = ref.watch(characterProvider);

  if (characterProv.isLoading) {
    return SearchNotifier()..mapEventsToState(const Loading());
  }

  final characterList = characterProv.whenOrNull(data: (data) => data);

  return SearchNotifier()
    ..mapEventsToState(
      UpdateListItems(
        modelList: characterList ?? ApiResultModel.empty(),
      ),
    );
});
