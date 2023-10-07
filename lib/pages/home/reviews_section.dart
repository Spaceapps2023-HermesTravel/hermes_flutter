import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Reviews from our Travelers:",
          style: tt.headlineMedium,
        ),
        Row(
          children: [
            Container(
              width: 384,
              height: 256,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: c.onBackground.withAlpha(96)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/mars.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Max',
                          style: tt.titleMedium,
                        ),
                      ],
                    ),
                    Divider(),
                    Text(
                        "I didn't expect that interplanetary travel could be so fascinating! Mars surprised me with it’s beautiful red scenery. The travel agency took care of every detail, and the scientific excursions were truly educational. I recommend it to anyone who dreams of a unique adventure beyond our planet!"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
