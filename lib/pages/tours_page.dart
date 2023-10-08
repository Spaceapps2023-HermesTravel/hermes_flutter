import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ToursPage extends StatelessWidget {
  final String backgroundAsset;
  final String title;
  final String desc;

  final String offer1backgroundAsset;
  final String offer1title;
  final String offer1attractions;

  final String? offer2backgroundAsset;
  final String offer2title;
  final String offer2attractions;

  const ToursPage({
    Key? key,
    required this.backgroundAsset,
    required this.title,
    required this.desc,
    required this.offer1backgroundAsset,
    required this.offer1title,
    required this.offer1attractions,
    required this.offer2backgroundAsset,
    required this.offer2title,
    required this.offer2attractions,
  }) : super(key: key);

  static get mars => ToursPage(
        backgroundAsset: 'mars.jpg',
        title: 'Mars',
        desc:
            "Mars’ surface is geologically diverse, full of impressive rock formations, volcanoes and wide valleys. Red sands and rocky formations create picturesque views that delight adventure lovers.",
        offer1backgroundAsset: 'mars-business.jpg',
        offer1title: 'Business Offer',
        offer1attractions:
            "Selected attractions:\n - The Hematite Baths\n - Crater of Hellas\n - Ski Resorts\n - Museum of the Government of Mars\n - The journey along the route of space rovers",
        offer2backgroundAsset: 'mars-premium.jpg',
        offer2title: 'Premium Offer',
        offer2attractions:
            "VIP Mars Tour with a Private Guide\n - Valles Marineris\n - Tharsis Montes\n - Unlimitted acces to Ski Resorts\n - Visiting the Tauri Valley",
      );

  static get moon => ToursPage(
        backgroundAsset: 'moon.jpg',
        title: 'Moon',
        desc:
            "Mars’ surface is geologically diverse, full of impressive rock formations, volcanoes and wide valleys. Red sands and rocky formations create picturesque views that delight adventure lovers.",
        offer1backgroundAsset: 'moon-business.jpg',
        offer1title: 'Business Offer',
        offer1attractions:
            "Museum History of the Moon\n - The Moon's Main Communication Port\n - Apollo 11 Landing Site\n - Exploring the Moonscape",
        offer2backgroundAsset: 'moon-premium.jpg',
        offer2title: 'Premium Offer',
        offer2attractions:
            "VIP Moon Tour with a Private Guid\n - Exploring the Moonscape\n - Visit to the light and dark side of the Moon Apollo 11 Landing Site\n - The Moon's Main Communication Port",
      );

  static get iss => ToursPage(
        backgroundAsset: 'iss.jpg',
        title: 'ISS Museum',
        desc:
            "The International Space Station Museum (ISSM) is a fascinating institution that has been established within the very heart of this historic structure after its retirement from active use. It is a unique place that allows visitors to explore the secrets of human space exploration.",
        offer1backgroundAsset: 'iss-edu.jpg',
        offer1title: 'Educational Offer',
        offer1attractions:
            'Exploration of the ISS Museum\n - Spacewalk\n - Earth Observations from the ISS\n - Interactive Presentations and Workshops\n - Culinary Adventure in Space',
        offer2backgroundAsset: null,
        offer2title: '',
        offer2attractions: '',
      );

  static get olympus => ToursPage(
        backgroundAsset: 'olympus.jpg',
        title: 'Olympus space station',
        desc:
            "Welcome to Olympus Station! Our Luxury Space Station is designed to provide unforgettable experiences for its guests. This exclusive space station offers not only an incredible view of space but also a full range of luxurious amenities that ensure comfort and entertainment at the highest level.",
        offer1backgroundAsset: 'olympus-lux.jpg',
        offer1title: 'Luxurious Offer',
        offer1attractions:
            'Exclusive Space Restaurant\n - Space Spa and Relaxation\n - Spacewalk - Cosmic Stroll\n - Star Observatory and Planetarium\n - Visit to Martian Colonies',
        offer2backgroundAsset: null,
        offer2title: '',
        offer2attractions: '',
      );

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
              image: AssetImage('assets/$backgroundAsset'),
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
              child: Text(title, style: tt.displayMedium),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(desc),
              SizedBox(height: 32),
              Text("Our offers", style: tt.headlineLarge),
              OfferBox(
                backgroundAsset: offer1backgroundAsset,
                title: offer1title,
                attractions: offer1attractions,
              ),
              if (offer2backgroundAsset != null)
                OfferBox(
                  backgroundAsset: offer2backgroundAsset!,
                  title: offer2title,
                  attractions: offer2attractions,
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
                    // todo: this hardcode
                    onPressed: () => context.go('/tours/mars/book'),
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
