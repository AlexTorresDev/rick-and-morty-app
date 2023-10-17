import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/config/providers/character_provider.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

final characterProvider = FutureProvider.autoDispose<ApiResultModel<CharacterModel>>((ref) {
  return ref.read(characterUseCaseProvider).getCharacters().then((value) => value.fold(
        (failure) => ApiResultModel<CharacterModel>.empty(),
        (characterList) => characterList,
      ));
});
