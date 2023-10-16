import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/src/domain/models/info/info_model.dart';

part 'api_result_model.freezed.dart';
part 'api_result_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResultModel<T> with _$ApiResultModel<T> {
  factory ApiResultModel({
    required InfoModel info,
    required List<T> results,
  }) = _ApiResult<T>;

  const ApiResultModel._();

  factory ApiResultModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResultModelFromJson(json, fromJsonT);

  factory ApiResultModel.empty() => ApiResultModel(
        info: InfoModel.empty(),
        results: [],
      );
}
