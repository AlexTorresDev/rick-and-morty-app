import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(SearchState.loading());

  void mapEventsToState(SearchEvent event) {
    event.map(
      searchedTextChanged: (searchedTextChangedEvent) {
        final characterList = [...state.apiCharacter.results];
        final searchedcharacterList = characterList
            .where((charaterModel) => charaterModel.name.toLowerCase().contains(
                searchedTextChangedEvent.text.toLowerCase().trimLeft()))
            .toList();

        final result = ApiResultModel<CharacterModel>(
          info: state.apiCharacter.info,
          results: searchedcharacterList,
        );

        state = state.copyWith(apiCharacter: result);
      },
      updateListItems: (updateListItemsEvent) {
        state = state.copyWith(
          apiCharacter: updateListItemsEvent.characterModelList,
          isLoading: false,
        );
      },
      loading: (_) {
        state = state.copyWith(
          apiCharacter: ApiResultModel.empty(),
          isLoading: true,
        );
      },
    );
  }
}
