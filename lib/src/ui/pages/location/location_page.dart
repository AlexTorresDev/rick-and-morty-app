import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/location/widgets/location_list.dart';
import 'package:rick_and_morty_app/src/ui/pages/location/widgets/location_search_bar.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.home_locations),
      ),
      body: Column(
        children: [
          LocationSearchBar(),
          const LocationList(),
        ],
      ),
    );
  }
}
