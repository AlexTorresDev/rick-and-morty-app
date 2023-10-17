import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/character/widgets/character_card.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_characters_provider.dart';

class CharacterList extends ConsumerWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProv = ref.watch(searchCharactersProvider);

    return searchProv.isLoading
        ? const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : searchProv.apiResult.results.isEmpty
            ? Expanded(
                child: Center(
                  child: Text(AppLocalizations.of(context)!.error_notFound),
                ),
              )
            : Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.73,
                      crossAxisSpacing: 4.0
                    ),
                    itemCount: searchProv.apiResult.results.length,
                    itemBuilder: (context, index) => CharacterCard(
                      character: searchProv.apiResult.results[index],
                    ),
                  ),
                ),
              );
  }
}
