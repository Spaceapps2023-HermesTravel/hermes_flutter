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
            Review(
              avatarAsset: 'user1.jpg',
              name: 'Max',
              review:
                  "I didn't expect that interplanetary travel could be so fascinating! Mars surprised me with it’s beautiful red scenery. The travel agency took care of every detail, and the scientific excursions were truly educational. I recommend it to anyone who dreams of a unique adventure beyond our planet!",
            ),
            Review(
              avatarAsset: 'user2.jpg',
              name: 'Maya',
              review:
                  "Traveling to Mars with Hermes Travel was something I will never forget. The guides were full of passion for space, and each day brought new, exciting discoveries. It was more than just a journey for me - it was a cosmic festival of experiences!",
            ),
            Review(
              avatarAsset: 'user3.jpg',
              name: 'Jimmy',
              review:
                  "The journey to the International Space Station Museum was a stellar addition to my interplanetary travel itinerary. Kudos to the travel agency for providing an enriching experience. From the space history exhibits to the zero-gravity simulation, every moment was captivating. A fantastic blend of education and entertainment!",
            ),
          ],
        ),
      ],
    );
  }
}

class Review extends StatelessWidget {
  final String avatarAsset;
  final String name;
  final String review;

  const Review({
    super.key,
    required this.avatarAsset,
    required this.name,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    return Container(
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
                      'assets/$avatarAsset',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(name, style: tt.titleMedium),
              ],
            ),
            Divider(),
            Text(review),
          ],
        ),
      ),
    );
  }
}
