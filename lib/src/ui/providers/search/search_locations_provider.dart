import 'package:rick_and_morty_app/src/domain/models/api-result/api_result_model.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/ui/providers/search/search_notifier.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_state.dart';
import 'package:rick_and_morty_app/src/ui/providers/location/location_provider.dart';

final searchLocationsProvider =
    StateNotifierProvider.autoDispose<SearchNotifier<LocationModel>, SearchState<LocationModel>>((ref) {
  final locationProv = ref.watch(locationProvider);

  if (locationProv.isLoading) {
    return SearchNotifier()..mapEventsToState(const Loading());
  }

  final locationList = locationProv.whenOrNull(data: (data) => data);

  return SearchNotifier()
    ..mapEventsToState(
      UpdateListItems(
        modelList: locationList ?? ApiResultModel.empty(),
      ),
    );
});
