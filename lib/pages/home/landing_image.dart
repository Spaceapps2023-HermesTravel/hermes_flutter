import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LandingImage extends StatelessWidget {
  const LandingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    final s = MediaQuery.of(context).size;
    return Container(
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
    );
  }
}
