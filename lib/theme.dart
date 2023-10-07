import 'package:flutter/material.dart';

final _base = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0x00edaa25),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);

final _c = _base.colorScheme;
final _tt = _base.textTheme;
final darkTheme = _base.copyWith(
  textTheme: _base.textTheme.copyWith(
    displayLarge: _tt.displayLarge!.copyWith(
      color: _c.primary,
      fontSize: 192,
      fontFamily: 'Ron',
    ),
    displayMedium: _tt.displayMedium!.copyWith(
      color: _c.primary,
      fontSize: 86,
      fontFamily: 'Ron',
    ),
    headlineLarge: _tt.headlineLarge!.copyWith(
      color: _c.primary,
      fontSize: 32,
    ),
    headlineMedium: _tt.headlineMedium!.copyWith(
      color: _c.primary,
      fontSize: 24,
    ),
    headlineSmall: _tt.headlineSmall!.copyWith(
      color: _c.primary,
      fontSize: 16,
    ),
  ),
);
