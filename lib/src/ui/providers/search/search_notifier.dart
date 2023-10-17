import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';

class SearchNotifier<T> extends StateNotifier<SearchState<T>> {
  SearchNotifier() : super(SearchState.loading());

  void mapEventsToState(SearchEvent<T> event) {
    event.map(
      searchedTextChanged: (searchedTextChangedEvent) {
        final list = [...state.apiResult.results];
        final searchedList = list
            .where((model) => (model as dynamic).name.toLowerCase().contains(
                searchedTextChangedEvent.text.toLowerCase().trimLeft()))
            .toList();

        final result = ApiResultModel<T>(
          info: state.apiResult.info,
          results: searchedList,
        );

        state = state.copyWith(apiResult: result);
      },
      updateListItems: (updateListItemsEvent) {
        state = state.copyWith(
          apiResult: updateListItemsEvent.modelList,
          isLoading: false,
        );
      },
      loading: (_) {
        state = state.copyWith(
          apiResult: ApiResultModel.empty(),
          isLoading: true,
        );
      },
    );
  }
}
