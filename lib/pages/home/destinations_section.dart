import 'package:flutter/material.dart';

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
          style: tt.headlineMedium,
        ),
        Row(
          children: [
            RoundedDestinationPreview(),
            RoundedDestinationPreview(),
            RoundedDestinationPreview(),
          ],
        ),
      ],
    );
  }
}

class RoundedDestinationPreview extends StatelessWidget {
  const RoundedDestinationPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final c = t.colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 128,
        height: 196,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image.asset('assets/mars.jpg', fit: BoxFit.cover),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  height: 64,
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  color: c.background.withAlpha(128),
                  child: Text('Mars'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
