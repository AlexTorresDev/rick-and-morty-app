import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';

part 'search_event.freezed.dart';

@Freezed(genericArgumentFactories: true)
class SearchEvent<T> with _$SearchEvent<T> {
  const factory SearchEvent.searchedTextChanged({required String text}) =
      SearchedTextChanged<T>;
  const factory SearchEvent.updateListItems(
      {required ApiResultModel<T> modelList}) = UpdateListItems<T>;
  const factory SearchEvent.loading() = Loading<T>;
}
