import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, color: Color(0xFF484848)),
        ));
  }
}
