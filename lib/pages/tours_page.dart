import 'dart:math';

import 'package:flutter/material.dart';

class ToursPage extends StatelessWidget {
  const ToursPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mars.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
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
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text('Mars', style: tt.displayMedium),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Mars’ surface is geologically diverse, full of impressive rock formations, volcanoes and wide valleys. Red sands and rocky formations create picturesque views that delight adventure lovers."),
              SizedBox(height: 32),
              Text("Our offers", style: tt.headlineLarge),
              OfferBox(
                backgroundAsset: 'mars-business.jpg',
                title: 'Business Offer',
                attractions:
                    "Selected attractions:\n - The Hematite Baths\n - Crater of Hellas\n - Ski Resorts\n - Museum of the Government of Mars\n - The journey along the route of space rovers",
              ),
              OfferBox(
                backgroundAsset: 'mars-premium.jpg',
                title: 'Premium Offer',
                attractions:
                    "VIP Mars Tour with a Private Guide\n - Valles Marineris\n - Tharsis Montes\n - Unlimitted acces to Ski Resorts\n - Visiting the Tauri Valley",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OfferBox extends StatelessWidget {
  final String backgroundAsset;
  final String title;
  final String attractions;

  const OfferBox({
    super.key,
    required this.backgroundAsset,
    required this.title,
    required this.attractions,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    return Container(
      height: 256,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.lerp(c.background, Colors.white, 0.07),
        border: Border.all(
          color: Color.lerp(c.background, Colors.white, 0.2)!,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/$backgroundAsset', fit: BoxFit.cover),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: tt.titleLarge),
                  Row(
                    children: [
                      for (var i = 0; i < 5; i++)
                        Icon(Icons.star, color: c.primary),
                      SizedBox(width: 8),
                      Text(
                          '${Random().nextInt(10) + 90}% of travelers recommend'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(attractions)
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("TEXT FLIGHT: MARCH 255", style: tt.labelLarge),
                  FilledButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text("BOOK NOW"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
