import 'package:rick_and_morty_app/src/config/providers/character_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';

final characterDetailsProvider =
    FutureProvider.autoDispose.family<CharacterModel, int>((ref, id) {
  return ref.watch(characterUseCaseProvider).getCharacter(id).then((cat) {
    return cat.fold((l) => CharacterModel.empty(), (r) => r);
  });
});
