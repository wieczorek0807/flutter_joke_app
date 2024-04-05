import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/features/favourites/domain/entities/joke_list/favourites_list_entity.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/widgets/favourite_list_item.dart';

class FavouritesList extends StatelessWidget {
  const FavouritesList({super.key, required this.favouritesListEntity});
  final FavouritesListEntity favouritesListEntity;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: favouritesListEntity.jokeList.length,
      itemBuilder: (context, index) => FavouriteListItem(jokeEntity: favouritesListEntity.jokeList[index]),
    );
  }
}
