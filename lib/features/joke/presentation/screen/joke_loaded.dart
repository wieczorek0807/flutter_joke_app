import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/styles/styles.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
import 'package:flutter_joke_app_mmi/features/joke/domain/entities/joke/joke_entity.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/widget/joke_action_buttons.dart';

class JokeScreenLoaded extends StatelessWidget {
  const JokeScreenLoaded({super.key, required this.loadedJoke});
  final JokeEntity loadedJoke;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.jokeScreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            loadedJoke.joke,
            style: TextStyles.jokeText,
          ),
          const SizedBox(
            height: AppDimensions.joke,
          ),
          const JokeActionButtons(),
        ],
      ),
    );
  }
}
