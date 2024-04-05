import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';

class DismissaibleBackground extends StatelessWidget {
  const DismissaibleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [dismissaibleBackgroundIcon(), dismissaibleBackgroundIcon()],
      ),
    );
  }

  Widget dismissaibleBackgroundIcon() {
    return const Padding(
      padding: AppPadding.dismissible,
      child: Icon(
        Icons.delete_forever,
        color: AppColors.white,
      ),
    );
  }
}
