import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rick_and_morty_app/src/ui/pages/home/widgets/home_item.dart';
import 'package:rick_and_morty_app/src/ui/widgets/sliver_search_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();

          return true;
        },
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: SliverSearchAppBar(
                text: AppLocalizations.of(context)!.home_title,
                back: false,
              ),
              pinned: true,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, _) {
                    return Column(
                      children: [
                        HomeItem(
                          icon: Icons.person,
                          image: 'assets/images/characters_cover.jpg',
                          title: AppLocalizations.of(context)!.home_characters,
                          route: '/character',
                        ),
                        HomeItem(
                          icon: Icons.location_on,
                          image: 'assets/images/locations_cover.jpg',
                          title: AppLocalizations.of(context)!.home_locations,
                          route: '/location',
                        ),
                        HomeItem(
                          icon: Icons.movie,
                          image: 'assets/images/episodes_cover.jpg',
                          title: AppLocalizations.of(context)!.home_episodes,
                          route: '/episode',
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
