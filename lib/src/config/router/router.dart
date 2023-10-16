import 'package:go_router/go_router.dart';

import 'package:rick_and_morty_app/src/ui/pages/details/details_page.dart';
import 'package:rick_and_morty_app/src/ui/pages/error_page.dart';
import 'package:rick_and_morty_app/src/ui/pages/home/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const HomePage(),
    ),
    GoRoute(
      path: '/details/:id',
      builder: (_, state) => DetailsPage(id: state.pathParameters['id']!),
    ),
  ],
  errorBuilder: (_, state) => const ErrorPage(),
);
