import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required ApiResultModel<CharacterModel> apiCharacter,
    required bool isLoading,
  }) = _SearchState;
  const SearchState._();

  factory SearchState.loading() => SearchState(
        apiCharacter: ApiResultModel<CharacterModel>.empty(),
        isLoading: true
      );
}
