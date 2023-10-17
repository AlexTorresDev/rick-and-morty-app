import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    super.key,
    required this.episode,
  });

  final EpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/details/${episode.id}'),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    episode.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        
                  ),
                  const SizedBox(height: 5),
                  Text(
                    episode.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
