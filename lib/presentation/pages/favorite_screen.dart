import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/view_for_elderty/view_for_elderty_cubit.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/view_for_elderty/view_for_elderty_state.dart';
import 'package:provider/provider.dart';

import '../bloc/favourite/favourite_cubit.dart';
import '../bloc/favourite/favourite_state.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ViewForEldertyCubit, ViewForEldertyState>(
        listener: (context, state) {},
        child: BlocBuilder<FavouriteCubit, FavouriteState>(
            builder: (context, state) {
          if (state is FavouriteLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is FavouriteLoaded) {
            return BlocBuilder<ViewForEldertyCubit, ViewForEldertyState>(
              builder: (elderycontext, elderystate) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: state.jokeList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        state.jokeList[index].joke,
                        style: Theme.of(elderycontext).textTheme.bodySmall,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Provider.of<FavouriteCubit>(context, listen: false)
                                .removeJokeFromFirebase(
                                    state.jokeList[index].id);
                          },
                          icon: const Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                          )),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 16.0),
                      dense: true,
                      shape: const Border(
                        bottom: BorderSide(),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return const Center(
              child: Text('FAVOURITE STATE ERROR'),
            );
          }
        }));
  }

  // Column(
  //   children: [
  //     TextButton(
  //         onPressed: () async {
  //           // print(await aaa.getId());

  //           final asd = JokeFirebaseDataSource();

  //           asd.getJokesFromFirebase();

  //           // await asd.addJokesToFirebase(
  //           //     Joke(error: false, joke: 'dupeczkijoke', id: 12));
  //         },
  //         child: Text('get')),
  //     TextButton(
  //         onPressed: () async {
  //           // print(await aaa.getId());

  //           final asd = JokeFirebaseDataSource();

  //           await asd.addJokesToFirebase(
  //               Joke(error: false, joke: 'dupeczkijoke', id: 12));
  //         },
  //         child: Text('add')),
  //   ],
  // );
}
