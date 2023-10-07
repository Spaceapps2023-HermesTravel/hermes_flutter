import 'package:flutter/material.dart';

import 'destinations_section.dart';
import 'hermes_provides_section.dart';
import 'landing_image.dart';
import 'nasa_certificate.dart';
import 'reviews_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    final s = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LandingImage(),
        Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DestinationsSection(),
              ReviewsSection(),
              NasaCertificate(),
              HermesProvidesSection(),
            ],
          ),
        ),
      ],
    );
  }
}
