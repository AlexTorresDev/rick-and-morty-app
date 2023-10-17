import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';

class EpisodeDetails extends StatelessWidget {
  const EpisodeDetails({super.key, required this.episode});

  final EpisodeModel episode;

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
                  AppLocalizations.of(context)!.episode_number,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                subtitle: Text(
                  episode.episode,
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  AppLocalizations.of(context)!.episode_date,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                subtitle: Text(
                  episode.airDate,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
