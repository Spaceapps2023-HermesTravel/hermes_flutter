import 'package:flutter/material.dart';

import 'pages/website_scaffold.dart';

class TopNavigationBar extends StatelessWidget {
  final Function(WebsitePage selectedPage) onSelected;
  final WebsitePage selectedPage;

  const TopNavigationBar({
    Key? key,
    required this.onSelected,
    required this.selectedPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;

    Widget button(WebsitePage page) => InkWell(
          onTap: () => onSelected(page),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: page == selectedPage
                    ? BorderSide(color: c.primary, width: 3.0)
                    : BorderSide.none,
              ),
            ),
            child: Text(page.title, style: tt.headlineMedium),
          ),
        );
    return Container(
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: c.primary),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          button(WebsitePage.home),
          button(WebsitePage.tours),
          button(WebsitePage.handbook),
          button(WebsitePage.about),
        ],
      ),
    );
  }
}
