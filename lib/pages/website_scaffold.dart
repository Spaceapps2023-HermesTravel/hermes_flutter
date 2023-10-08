import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../top_navigation_bar.dart';
import 'about_page.dart';
import 'handbook_page.dart';
import 'home/home_page.dart';
import 'tours_page.dart';

enum WebsitePage {
  home('HOME'),
  tours('TOURS'),
  handbook('HANDBOOK'),
  about('ABOUT');

  final String title;

  const WebsitePage(this.title);
}

class WebsiteScaffold extends StatelessWidget {
  final String currentRoute;

  const WebsiteScaffold({Key? key, required this.currentRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WebsitePage selectedPage = switch (currentRoute) {
      '/' => WebsitePage.home,
      String() when currentRoute.contains('/tours') => WebsitePage.tours,
      '/handbook' => WebsitePage.handbook,
      '/about' => WebsitePage.about,
      String() => WebsitePage.home,
    };
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                layoutBuilder: (currentChild, previousChildren) => Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ...previousChildren,
                    if (currentChild != null) currentChild,
                  ],
                ),
                child: switch (selectedPage) {
                  // keys are for AnimatedSwitcher to figure it out
                  WebsitePage.home => HomePage(key: UniqueKey()),
                  WebsitePage.tours => currentRoute.contains('mars')
                      ? ToursPage.mars
                      : ToursPage.moon,
                  WebsitePage.handbook => HandbookPage(key: UniqueKey()),
                  WebsitePage.about => AboutPage(key: UniqueKey()),
                },
              ),
              TopNavigationBar(
                onSelected: (WebsitePage selectedPage) {
                  context.go(switch (selectedPage) {
                    WebsitePage.home => '/',
                    WebsitePage.tours => '/tours/mars',
                    WebsitePage.handbook => '/handbook',
                    WebsitePage.about => '/about',
                  });
                },
                selectedPage: selectedPage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
