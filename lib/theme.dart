import 'package:flutter/material.dart';

final _zolty = Color(0xffedaa25);
final _base = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: _zolty,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);

final _c = _base.colorScheme.copyWith(
  primary: _zolty,
);
final _tt = _base.textTheme;
final darkTheme = _base.copyWith(
  colorScheme: _c,
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
    titleMedium: _tt.titleMedium!.copyWith(
      fontSize: 20,
    ),
    bodyMedium: _tt.bodyMedium!.copyWith(
      fontSize: 16,
    ),
  ),
);
