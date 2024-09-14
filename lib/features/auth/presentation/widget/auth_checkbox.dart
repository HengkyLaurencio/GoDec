import 'package:flutter/material.dart';

class AuthCheckbox extends StatelessWidget {
  final String text;

  const AuthCheckbox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Theme.of(context).colorScheme.surface,
          focusColor: Theme.of(context).colorScheme.surface,
          fillColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Theme.of(context).colorScheme.surface.withOpacity(.32);
            }
            return Theme.of(context).colorScheme.surface;
          }),
          value: false,
          onChanged: (bool? value) {},
        ),
        Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
