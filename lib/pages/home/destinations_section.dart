import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DestinationsSection extends StatelessWidget {
  const DestinationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Destinations ready to EXPLORE:",
          style: tt.headlineLarge,
        ),
        SizedBox(height: 16),
        Row(
          children: [
            RoundedDestinationPreview(
              backgroundAsset: 'mars.jpg',
              title: 'Mars',
              route: 'mars',
            ),
            SizedBox(width: 16),
            RoundedDestinationPreview(
              backgroundAsset: 'moon.jpg',
              title: 'Moon',
              route: 'moon',
            ),
            SizedBox(width: 16),
            RoundedDestinationPreview(
              backgroundAsset: 'iss.jpg',
              title: 'ISS Museum',
              route: 'iss-museum',
            ),
            SizedBox(width: 16),
            RoundedDestinationPreview(
              backgroundAsset: 'jupiter.jpg',
              title: 'Jupiter',
              route: 'jupiter',
            ),
          ],
        ),
      ],
    );
  }
}

class RoundedDestinationPreview extends StatelessWidget {
  final String backgroundAsset;
  final String title;
  final String route;

  const RoundedDestinationPreview({
    super.key,
    required this.backgroundAsset,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () {
          context.go('/tours/$route');
        },
        child: SizedBox(
          width: 288,
          height: 320,
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset('assets/$backgroundAsset', fit: BoxFit.cover),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 64,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    color: c.background.withAlpha(192),
                    child: Text(title, style: tt.bodyLarge),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
