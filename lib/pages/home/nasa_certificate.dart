import 'package:flutter/material.dart';

class NasaCertificate extends StatelessWidget {
  const NasaCertificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    return Container(
      constraints: BoxConstraints(maxHeight: 192),
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
            Expanded(flex: 2, child: Image.asset('assets/nasa.png')),
            VerticalDivider(),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hermes Company is an official partner of NASA.",
                    style: tt.titleMedium,
                  ),
                  Text(
                    "Together, we reaches the ends of the Earth and beyond!",
                    style: tt.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
