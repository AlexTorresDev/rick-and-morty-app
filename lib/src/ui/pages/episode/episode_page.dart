import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:rick_and_morty_app/src/ui/pages/episode/widgets/episode_list.dart';
import 'package:rick_and_morty_app/src/ui/pages/episode/widgets/episode_search_bar.dart';

class EpisodePage extends StatelessWidget {
  const EpisodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.home_episodes),
      ),
      body: Column(
        children: [
          EpisodeSearchBar(),
          const EpisodeList(),
        ],
      ),
    );
  }
}
