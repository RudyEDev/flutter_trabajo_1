import 'package:flutter/material.dart';

class ButtonOperation extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const ButtonOperation({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}