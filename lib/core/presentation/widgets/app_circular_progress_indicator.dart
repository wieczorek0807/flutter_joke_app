import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: AppColors.circularProgressIndicator,
    );
  }
}
