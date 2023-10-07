import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: AutoSizeText(
                      'FROM OUTER SPACE TO OLIMPUS',
                      maxLines: 1,
                      style: TextStyle(
                        color: c.primary,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  AutoSizeText(
                    'Hermes',
                    maxLines: 1,
                    style: TextStyle(
                      color: c.primary,
                      fontFamily: 'Ron',
                      fontSize: 192,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Destinations ready to EXPLORE:",
            style: TextStyle(fontSize: 28, color: c.primary),
          ),
        ),
        Row(
          children: [
            RoundedDestinationPreview(),
            RoundedDestinationPreview(),
            RoundedDestinationPreview(),
          ],
        )
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
