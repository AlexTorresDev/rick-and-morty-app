import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';

part 'search_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
class SearchState<T> with _$SearchState<T> {
  factory SearchState({
    required ApiResultModel<T> apiResult,
    required bool isLoading,
  }) = _SearchState<T>;

  const SearchState._();

  factory SearchState.loading() => SearchState(
        apiResult: ApiResultModel<T>.empty(),
        isLoading: true,
      );
}
