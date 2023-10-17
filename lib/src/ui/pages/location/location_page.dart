import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';
import 'package:rick_and_morty_app/src/ui/pages/location/widgets/location_details.dart';
import 'package:rick_and_morty_app/src/ui/pages/location/widgets/location_list.dart';
import 'package:rick_and_morty_app/src/ui/providers/location/location_details_provider.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_locations_provider.dart';
import 'package:rick_and_morty_app/src/ui/widgets/sliver_search_app_bar.dart';

class LocationPage extends ConsumerWidget {
  const LocationPage({
    super.key,
    this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (id != null) {
      final locationProvider =
          ref.watch(locationDetailsProvider(int.parse(id!)));

      String title = locationProvider.when(
        skipError: true,
        data: (location) => location.name,
        loading: () => '',
        error: (_, __) => '',
      );

      return Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();

            return true;
          },
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: SliverSearchAppBar<LocationModel>(
                  text: title,
                  showSearchBar: false,
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, _) => locationProvider.when(
                    data: (location) => LocationDetails(location: location),
                    error: (_, stacktrace) => Center(
                      child: Text(stacktrace.toString()),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  childCount: 1,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();

          return true;
        },
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: SliverSearchAppBar<LocationModel>(
                text: AppLocalizations.of(context)!.home_episodes,
                showSearchBar: true,
                searchProvider: searchLocationsProvider,
              ),
              pinned: true,
            ),
            const LocationList(),
          ],
        ),
      ),
    );
  }
}
