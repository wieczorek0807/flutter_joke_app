import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/injection/injection_container.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/cubit/joke_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/widget/joke_icon_button.dart';

class JokeActionButtons extends StatelessWidget {
  const JokeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        JokeIconButton(
            onPressed: () => getIt<JokeCubit>().getNewJoke(),
            icon: Icons.sync,
            text: AppLocalizations.of(context)!.nextOne,
            buttonColor: AppColors.crusoe),
        const SizedBox(
          width: AppDimensions.jokeButton,
        ),
        JokeIconButton(
            onPressed: () {
              getIt<JokeCubit>().addJokeToFirebase();
              showSnackBar(context);
            },
            icon: Icons.favorite,
            text: AppLocalizations.of(context)!.addToFavourites,
            buttonColor: AppColors.red)
      ],
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          AppLocalizations.of(context)!.addedToFavourites,
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: AppColors.red,
      ),
    );
  }
}
