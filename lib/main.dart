import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/website_scaffold.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    route(String route) => GoRoute(
          path: route,
          builder: (context, state) =>
              WebsiteScaffold(currentRoute: state.matchedLocation),
      pageBuilder: (context, state) => NoTransitionPage(child: WebsiteScaffold(currentRoute: state.matchedLocation),)
        );

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: darkTheme,
      routerConfig: GoRouter(
        routes: [
          route('/'),
          route('/tours/mars'),
          route('/tours/moon'),
          route('/handbook'),
          route('/about'),
        ],
      ),
    );
  }
}
