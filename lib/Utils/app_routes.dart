import 'package:go_router/go_router.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/views/search_view.dart';

String homeView = '/';
String searchView = '/searchView';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: searchView,
      builder: (context, state) => const SearchView(),
    ),
  ],
);
