import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/character/widgets/character_list.dart';
import 'package:rick_and_morty_app/src/ui/pages/character/widgets/character_search_bar.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.home_characters),
      ),
      body: Column(
        children: [
          CharacterSearchBar(),
          const CharacterList(),
        ],
      ),
    );
  }
}
