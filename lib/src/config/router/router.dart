import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/src/ui/pages/character/character_page.dart';

import 'package:rick_and_morty_app/src/ui/pages/episode/episode_page.dart';
import 'package:rick_and_morty_app/src/ui/pages/error_page.dart';
import 'package:rick_and_morty_app/src/ui/pages/home/home_page.dart';
import 'package:rick_and_morty_app/src/ui/pages/location/location_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const HomePage(),
    ),
    GoRoute(
      path: '/character',
      builder: (_, state) => const CharacterPage(),
    ),
    GoRoute(
      path: '/episode',
      builder: (_, state) => const EpisodePage(),
    ),
    GoRoute(
      path: '/location',
      builder: (_, state) => const LocationPage(),
    ),
    GoRoute(
      path: '/character/:id',
      builder: (_, state) => CharacterPage(id: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/episode/:id',
      builder: (_, state) => EpisodePage(id: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/location/:id',
      builder: (_, state) => LocationPage(id: state.pathParameters['id']!),
    ),
  ],
  errorBuilder: (_, state) => const ErrorPage(),
);
