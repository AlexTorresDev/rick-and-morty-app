import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/domain/models/location/location_model.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({super.key, required this.location});

  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  AppLocalizations.of(context)!.location_type,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                subtitle: Text(
                  location.type,
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  AppLocalizations.of(context)!.location_dimension,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                subtitle: Text(
                  location.dimension,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
