import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  factory EpisodeModel({
    required int id,
    required String name,
    required String airDate,
    required String episode,
    required List<String> characters,
    required String url,
    required DateTime created,
  }) = _EpisodeModel;

  const EpisodeModel._();

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  factory EpisodeModel.empty() => EpisodeModel(
        id: 0,
        name: '',
        airDate: '',
        episode: '',
        characters: [],
        url: '',
        created: DateTime.now(),
      );
}
