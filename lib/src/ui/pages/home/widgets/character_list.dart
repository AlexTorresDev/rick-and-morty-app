import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/home/widgets/character_card.dart';
import 'package:rick_and_morty_app/src/ui/providers/search/search_provider.dart';

class CharacterList extends ConsumerWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProv = ref.watch(searchProvider);

    return searchProv.isLoading
        ? const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : searchProv.apiCharacter.results.isEmpty
            ? Expanded(
                child: Center(
                  child: Text(AppLocalizations.of(context)!.error_notFound),
                ),
              )
            : Expanded(
                child: ListView.separated(
                  itemCount: searchProv.apiCharacter.results.length,
                  separatorBuilder: (context, index) => const SizedBox(),
                  itemBuilder: (context, index) => CatCard(
                    character: searchProv.apiCharacter.results[index],
                  ),
                ),
              );
  }
}
