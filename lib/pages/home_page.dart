import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
        Container(
          height: s.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home-bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(64),
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
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: AutoSizeText('FROM OUTER SPACE TO OLIMPUS',
                        maxLines: 1, style: tt.headlineLarge),
                  ),
                  AutoSizeText(
                    'Hermes',
                    maxLines: 1,
                    style: tt.displayLarge,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(32),
          child: Column(
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
          ),
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
