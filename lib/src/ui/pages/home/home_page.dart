import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/home/widgets/character_list.dart';
import 'package:rick_and_morty_app/src/ui/pages/home/widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.home_title),
      ),
      body: Column(
        children: [
          CustomSearchBar(),
          const CharacterList(),
        ],
      ),
    );
  }
}
