import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/episode/widgets/episode_item.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_episodes_provider.dart';

class EpisodeList extends ConsumerWidget {
  const EpisodeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProv = ref.watch(searchEpisodesProvider);

    if (searchProv.isLoading) {
      return SliverList(
        delegate: SliverChildListDelegate(
          [
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      );
    }

    if (searchProv.apiResult.results.isEmpty) {
      return SliverList(
        delegate: SliverChildListDelegate(
          [
            Center(
              child: Text(AppLocalizations.of(context)!.error_notFound),
            ),
          ],
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverList.separated(
        itemCount: searchProv.apiResult.results.length,
        itemBuilder: (context, index) => EpisodeItem(
          episode: searchProv.apiResult.results[index],
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
