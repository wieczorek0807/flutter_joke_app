import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/styles/styles.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
// ignore: unused_import
import 'package:flutter_joke_app_mmi/features/favourites/domain/entities/joke_list/favourites_list_entity.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/widgets/dismissible_background.dart';
import 'package:flutter_joke_app_mmi/features/joke/domain/entities/joke/joke_entity.dart';

import '../../../../core/injection/injection_container.dart';
import '../cubit/favourite_cubit.dart';

class FavouriteListItem extends StatelessWidget {
  const FavouriteListItem({super.key, required this.jokeEntity});
  final JokeEntity jokeEntity;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(jokeEntity.joke),
      background: const DismissaibleBackground(),
      onDismissed: (direction) => getIt<FavouriteCubit>().removeJokeFromFirebase(jokeEntity.id),
      child: ListTile(
        title: Text(
          jokeEntity.joke,
          style: TextStyles.jokeText,
        ),
        contentPadding: AppPadding.jokeDismissible,
        shape: const Border(
          bottom: BorderSide(),
        ),
      ),
    );
  }
}
