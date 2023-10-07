import 'package:flutter/material.dart';

import '../top_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final c = t.colorScheme;
    return Scaffold(
      // backgroundColor: Colors.red,
      body: ListView(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mars-bgn.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopNavigationBar(),
                Container(
                  width: double.infinity,
                  height: 128,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        c.background,
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Text(
                    'Mars',
                    style: TextStyle(
                      color: c.primary,
                      fontSize: 86,
                      fontFamily: 'Ron',
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),
            child: Text(
                "Mars’ surface is geologically diverse, full of impressive rock formations, volcanoes and wide valleys. Red sands and rocky formations create picturesque views that delight adventure lovers."),
          ),
        ],
      ),
    );
  }
}
