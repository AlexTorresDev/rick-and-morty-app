import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rick_and_morty_app/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morty_app/src/ui/pages/episode/widgets/episode_details.dart';
import 'package:rick_and_morty_app/src/ui/pages/episode/widgets/episode_list.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_episodes_provider.dart';
import 'package:rick_and_morty_app/src/ui/widgets/sliver_search_app_bar.dart';
import 'package:rick_and_morty_app/src/ui/providers/episode/episode_details_provider.dart';

class EpisodePage extends ConsumerWidget {
  const EpisodePage({
    super.key,
    this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (id != null) {
      final episodeProvider =
          ref.watch(episodeDetailsProvider(int.parse(id!)));

      String title = episodeProvider.when(
        skipError: true,
        data: (episode) => episode.name,
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
                delegate: SliverSearchAppBar<EpisodeModel>(
                  text: title,
                  showSearchBar: false,
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, _) => episodeProvider.when(
                    data: (episode) => EpisodeDetails(episode: episode),
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
              delegate: SliverSearchAppBar<EpisodeModel>(
                text: AppLocalizations.of(context)!.home_episodes,
                showSearchBar: true,
                searchProvider: searchEpisodesProvider,
              ),
              pinned: true,
            ),
            const EpisodeList(),
          ],
        ),
      ),
    );
  }
}
