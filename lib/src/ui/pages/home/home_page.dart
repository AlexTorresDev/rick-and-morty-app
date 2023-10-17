import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/ui/pages/home/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.home_title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeCard(
              image: 'assets/images/characters_cover.jpg',
              title: AppLocalizations.of(context)!.home_characters,
              route: '/character',
            ),
            HomeCard(
              image: 'assets/images/locations_cover.jpg',
              title: AppLocalizations.of(context)!.home_locations,
              route: '/location',
            ),
            HomeCard(
              image: 'assets/images/episodes_cover.jpg',
              title: AppLocalizations.of(context)!.home_episodes,
              route: '/episode',
            ),
          ],
        ),
      ),
    );
  }
}
