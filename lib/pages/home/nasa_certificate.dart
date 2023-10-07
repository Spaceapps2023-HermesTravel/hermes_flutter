import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class NasaCertificate extends StatelessWidget {
  const NasaCertificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    return Container(
      height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color.lerp(c.background, Colors.white, 0.2)!,
          width: 2,
        ),
        color: Color.lerp(c.background, Colors.white, 0.07),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/nasa.png'),
            VerticalDivider(),
            Column(
              children: [
                AutoSizeText(
                  "Hermes Company is an official partner of NASA.",
                  maxLines: 10,
                  style: tt.bodyLarge,
                ),
                AutoSizeText(
                  "Together, we reaches the ends of the Earth and beyond!",
                  style: tt.bodyMedium,
                ),
              ],
            ),
            OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Show details',
                    style: tt.bodyLarge,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
