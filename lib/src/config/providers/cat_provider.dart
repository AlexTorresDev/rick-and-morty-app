import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/config/providers/client_provider.dart';
import 'package:rick_and_morty_app/src/domain/use_cases/character/character_use_case.dart';
import 'package:rick_and_morty_app/src/infrastructure/driven_adapter/api/character_api/character_api.dart';

final characterUseCaseProvider = Provider<CharacterUseCase>((ref) {
  final clientService = ref.watch(clientProvider);
  return CharacterUseCase(CharacterApi(clientService));
});
