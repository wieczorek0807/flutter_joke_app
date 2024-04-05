import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/styles/styles.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';

class JokeIconButton extends StatelessWidget {
  const JokeIconButton({super.key, required this.onPressed, required this.icon, required this.text, required this.buttonColor});

  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: AppColors.white,
        ),
        label: Text(
          text,
          style: TextStyles.iconButton,
        ),
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor));
  }
}
