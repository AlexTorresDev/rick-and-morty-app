import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/config/providers/location_provider.dart';
import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';

final locationProvider = FutureProvider.autoDispose<ApiResultModel<LocationModel>>((ref) {
  return ref.read(locationUseCaseProvider).getLocations().then((value) => value.fold(
        (failure) => ApiResultModel<LocationModel>.empty(),
        (locationList) => locationList,
      ));
});
