import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    required int id,
    required String name,
    required String type,
    required String dimension,
    required List<String> residents,
    required String url,
    required DateTime created,
  }) = _LocationModel;

  const LocationModel._();

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  factory LocationModel.empty() => LocationModel(
        id: 0,
        name: '',
        type: '',
        dimension: '',
        residents: [],
        url: '',
        created: DateTime.now(),
      );
}
