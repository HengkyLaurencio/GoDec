import 'package:flutter/material.dart';

class AuthNotif {
  static void show(BuildContext context, String message) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 25,
        left: 0,
        right: 0,
        child: Material(
          color: Theme.of(context).colorScheme.onSurface,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).colorScheme.onSurface,
            child: Text(
              message,
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }
}
