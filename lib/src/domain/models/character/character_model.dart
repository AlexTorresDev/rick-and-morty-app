import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/src/domain/models/character/location_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required LocationModel origin,
    required LocationModel location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) = _CharacterModel;

  const CharacterModel._();

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  factory CharacterModel.empty() => CharacterModel(
        id: 0,
        name: '',
        status: '',
        species: '',
        gender: '',
        type: '',
        origin: LocationModel.empty(),
        location: LocationModel.empty(),
        image: '',
        episode: [],
        url: '',
        created: DateTime.now(),
      );
}
