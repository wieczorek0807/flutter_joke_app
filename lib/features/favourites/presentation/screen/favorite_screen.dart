import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/cubit/favourite_cubit.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/widgets/favourites_list.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteState>(builder: (context, state) {
      return state.maybeWhen(
          initial: () => const Text('init'),
          error: ((message) => Text(message)),
          orElse: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: ((favouritesListEntity) => FavouritesList(favouritesListEntity: favouritesListEntity)));
    });
  }
}
