import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;

    Widget button(String text, bool isSelected) => Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: isSelected
                  ? BorderSide(color: c.primary, width: 3.0)
                  : BorderSide.none,
            ),
          ),
          child: Text(
            text,
            style: tt.headlineSmall!.copyWith(color: c.primary),
          ),
        );
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: c.primary),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          button('HOME', false),
          button('TOURS', false),
          button('HANDBOOK', true),
          button('ABOUT', false),
        ],
      ),
    );
  }
}
