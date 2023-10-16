import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchedTextChanged({required String text}) =
      SearchedTextChanged;
  const factory SearchEvent.updateListItems(
      {required ApiResultModel<CharacterModel> characterModelList}) = UpdateListItems;
  const factory SearchEvent.loading() = Loading;
}
