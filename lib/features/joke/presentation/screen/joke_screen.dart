import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/core/presentation/widgets/app_circular_progress_indicator.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/cubit/joke_cubit.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/screen/joke_loaded.dart';

class JokeScreen extends StatelessWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<JokeCubit, JokeState>(
        builder: (context, state) {
          return state.maybeMap(
              loading: (_) => const AppCircularProgressIndicator(),
              loaded: (value) => JokeScreenLoaded(loadedJoke: value.joke),
              error: (value) => const Text('Error'),
              orElse: () => const SizedBox.shrink());
        },
      ),
    );
  }
}
