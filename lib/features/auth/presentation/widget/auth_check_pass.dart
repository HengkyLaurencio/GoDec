import 'package:flutter/material.dart';

class AuthCheckPass extends StatelessWidget {
  final bool containsUpperCase;
  final bool containsLowerCase;
  final bool containsNumber;
  final bool containsSpecialChar;
  final bool contains8Length;

  const AuthCheckPass(
      {super.key,
      required this.containsUpperCase,
      required this.containsLowerCase,
      required this.containsNumber,
      required this.containsSpecialChar,
      required this.contains8Length});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "⚈  1 uppercase",
              style: TextStyle(
                  color: containsUpperCase
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "⚈  1 lowercase",
              style: TextStyle(
                  color: containsLowerCase
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "⚈  1 number",
              style: TextStyle(
                  color: containsNumber
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "⚈  1 special character",
              style: TextStyle(
                  color: containsSpecialChar
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "⚈  8 minimum character",
              style: TextStyle(
                  color: contains8Length
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      ],
    );
  }
}
