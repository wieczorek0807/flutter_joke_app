import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../bloc/joke/joke_cubit.dart';
import '../bloc/joke/joke_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<JokeCubit, JokeState>(
        builder: (context, state) {
          if (state is JokeInitial) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Press the button to see the first joke'),
                  TextButton(
                      onPressed: () {
                        Provider.of<JokeCubit>(context, listen: false)
                            .getNewJoke();
                      },
                      child: const Text('Press me'))
                ]);
          } else if (state is JokeLoading) {
            return const CircularProgressIndicator();
          } else if (state is JokeSuccess) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.joke.joke),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Provider.of<JokeCubit>(context, listen: false)
                                .getNewJoke();
                          },
                          child: const Text('Give me the next one')),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            Provider.of<JokeCubit>(context, listen: false)
                                .addJokeToFirebase(state.joke);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Joke added to Favourites!'),
                                duration: Duration(seconds: 1),
                                backgroundColor: Colors.redAccent,
                              ),
                            );
                          },
                          icon: const Icon(Icons.favorite),
                          label: const Text('add to Favorites'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent)),
                    ],
                  )
                ],
              ),
            );
          } else if (state is JokeError) {
            return const Text('Error');
          } else {
            return const Text('dupd duapa');
          }
        },
      ),
    );
  }
}
