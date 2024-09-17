import 'package:flutter/material.dart';

class AuthCheckbox extends StatefulWidget {
  final String text;

  const AuthCheckbox({super.key, required this.text});

  @override
  State<AuthCheckbox> createState() => _AuthCheckboxState();
}

class _AuthCheckboxState extends State<AuthCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Theme.of(context).colorScheme.surface.withOpacity(.32);
            }
            return Theme.of(context).colorScheme.surface;
          }),
          checkColor: Theme.of(context).colorScheme.onSurface,
          focusColor: Theme.of(context).colorScheme.onSurface,
          activeColor: Theme.of(context).colorScheme.onSurface,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? true;
            });
          },
        ),
        Text(
          widget.text,
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
