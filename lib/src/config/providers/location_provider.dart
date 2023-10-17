import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/config/providers/client_provider.dart';
import 'package:rick_and_morty_app/src/domain/use_cases/location/location_use_case.dart';
import 'package:rick_and_morty_app/src/infrastructure/driven_adapter/api/location_api/location_api.dart';

final locationUseCaseProvider = Provider<LocationUseCase>((ref) {
  final clientService = ref.watch(clientProvider);
  return LocationUseCase(LocationApi(clientService));
});
