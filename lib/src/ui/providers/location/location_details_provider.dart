import 'package:rick_and_morty_app/src/config/providers/location_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';

final locationDetailsProvider =
    FutureProvider.autoDispose.family<LocationModel, int>((ref, id) {
  return ref.watch(locationUseCaseProvider).getLocation(id).then((cat) {
    return cat.fold((l) => LocationModel.empty(), (r) => r);
  });
});
