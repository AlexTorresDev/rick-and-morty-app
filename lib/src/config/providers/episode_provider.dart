import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/config/providers/client_provider.dart';
import 'package:rick_and_morty_app/src/domain/use_cases/episode/episode_use_case.dart';
import 'package:rick_and_morty_app/src/infrastructure/driven_adapter/api/episode_api/episode_api.dart';

final episodeUseCaseProvider = Provider<EpisodeUseCase>((ref) {
  final clientService = ref.watch(clientProvider);
  return EpisodeUseCase(EpisodeApi(clientService));
});
