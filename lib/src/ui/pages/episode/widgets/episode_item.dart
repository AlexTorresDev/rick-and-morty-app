import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';

class EpisodeItem extends StatelessWidget {
  const EpisodeItem({
    super.key,
    required this.episode,
  });

  final EpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/details/${episode.id}'),
      child: ListTile(
        leading: const Icon(Icons.movie),
        title: Text(
          episode.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          episode.episode,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
