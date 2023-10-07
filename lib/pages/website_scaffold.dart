import 'package:flutter/material.dart';

import '../top_navigation_bar.dart';
import 'about_page.dart';
import 'handbook_page.dart';
import 'home_page.dart';
import 'tours_page.dart';

class WebsiteScaffold extends StatefulWidget {
  const WebsiteScaffold({Key? key}) : super(key: key);

  @override
  State<WebsiteScaffold> createState() => _WebsiteScaffoldState();
}

enum WebsitePage {
  home('HOME'),
  tours('TOURS'),
  handbook('HANDBOOK'),
  about('ABOUT');

  final String title;

  const WebsitePage(this.title);
}

class _WebsiteScaffoldState extends State<WebsiteScaffold> {
  @override
  void initState() {
    super.initState();
    // idk if this does anything but 🤷
    cache(String ass) => precacheImage(
          AssetImage('assets/$ass'),
          context,
        );
    cache('home-bg.jpg');
    cache('mars.jpg');
    cache('mars-bgn.jpg');
  }

  WebsitePage _selectedPage = WebsitePage.handbook;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                child: switch (_selectedPage) {
                  WebsitePage.home => HomePage(),
                  WebsitePage.tours => ToursPage(),
                  WebsitePage.handbook => HandbookPage(),
                  WebsitePage.about => AboutPage(),
                },
              ),
              TopNavigationBar(
                onSelected: (WebsitePage selectedPage) =>
                    setState(() => _selectedPage = selectedPage),
                selectedPage: _selectedPage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
