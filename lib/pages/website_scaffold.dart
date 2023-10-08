import 'package:flutter/material.dart';

import '../top_navigation_bar.dart';
import 'about_page.dart';
import 'handbook_page.dart';
import 'home/home_page.dart';
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    // idk if this does anything but 🤷
    // cache(String ass) => precacheImage(
    //       AssetImage('assets/$ass'),
    //       context,
    //     );
    // cache('home-bg.jpg');
    // cache('mars.jpg');
    // cache('mars-bgn.jpg');
  }

  WebsitePage _selectedPage = WebsitePage.home;

  @override
  Widget build(BuildContext context) {
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
                child: switch (_selectedPage) {
                  // keys are for AnimatedSwitcher to figure it out
                  WebsitePage.home => HomePage(key: UniqueKey()),
                  WebsitePage.tours => ToursPage.moon,
                  WebsitePage.handbook => HandbookPage(key: UniqueKey()),
                  WebsitePage.about => AboutPage(key: UniqueKey()),
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
