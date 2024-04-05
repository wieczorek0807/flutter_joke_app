import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/core/injection/injection_container.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/cubit/favourite_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../cubit/navigation_cubit.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
            backgroundColor: AppColors.background,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.sentiment_very_satisfied,
                ),
                label: AppLocalizations.of(context)!.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.favorite,
                ),
                label: AppLocalizations.of(context)!.favourites,
              ),
            ],
            currentIndex: state.index,
            selectedItemColor: AppColors.crusoe,
            onTap: (value) {
              if (value == 0) {
                getIt<NavigationCubit>().changeToHomeScreen();
              } else {
                getIt<FavouriteCubit>().getJokesFromFirebase();
                getIt<NavigationCubit>().changeToFavoureitesScreen();
              }
            });
      },
    );
  }
}
