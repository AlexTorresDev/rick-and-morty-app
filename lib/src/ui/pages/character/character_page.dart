import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/domain/models/character/character_model.dart';
import 'package:rick_and_morty_app/src/ui/pages/character/widgets/character_list.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_characters_provider.dart';
import 'package:rick_and_morty_app/src/ui/widgets/sliver_search_app_bar.dart';
import 'package:rick_and_morty_app/src/ui/pages/character/widgets/character_details.dart';
import 'package:rick_and_morty_app/src/ui/providers/character/character_details_provider.dart';

class CharacterPage extends ConsumerWidget {
  const CharacterPage({
    super.key,
    this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (id != null) {
      final characterProvider =
          ref.watch(characterDetailsProvider(int.parse(id!)));

      String title = characterProvider.when(
        skipError: true,
        data: (character) => character.name,
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
                delegate: SliverSearchAppBar<CharacterModel>(
                  text: title,
                  showSearchBar: false,
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, _) => characterProvider.when(
                    data: (character) => CharacterDetails(character: character),
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
              delegate: SliverSearchAppBar<CharacterModel>(
                text: AppLocalizations.of(context)!.home_characters,
                showSearchBar: true,
                searchProvider: searchCharactersProvider,
              ),
              pinned: true,
            ),
            const CharacterList(),
          ],
        ),
      ),
    );
  }
}
