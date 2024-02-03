import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/data/datasources/auth_data_source.dart';
import 'package:provider/provider.dart';

import '../bloc/change_page/change_page_cubit.dart';
import '../bloc/change_page/change_page_state.dart';
import '../bloc/favourite/favourite_cubit.dart';
import '../bloc/view_for_elderty/view_for_elderty_cubit.dart';
import '../bloc/view_for_elderty/view_for_elderty_state.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IT jokes app',
        ),
        actions: [
          BlocBuilder<ViewForEldertyCubit, ViewForEldertyState>(
              builder: (context, state) {
            return Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.text_increase),
                  onPressed: () =>
                      Provider.of<ViewForEldertyCubit>(context, listen: false)
                          .changeViewState(),
                ),
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () => AuthDataSource().signOut(),
                )
              ],
            );
          })
        ],
      ),
      body: BlocBuilder<ChangePageCubit, ChangePageState>(
        builder: (context, state) {
          if (state is HomeScreenState) {
            return const HomeScreen();
          } else if (state is FavoriteScreenState) {
            return const FavoriteScreen();
          } else {
            return const Text('Missing Screen State');
          }
        },
      ),
      bottomNavigationBar:
          BlocBuilder<ViewForEldertyCubit, ViewForEldertyState>(
        builder: (elderycontext, elderystate) {
          return BlocBuilder<ChangePageCubit, ChangePageState>(
            builder: (context, state) {
              return BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                          size: elderystate.currentTheme.iconTheme.size,
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                        size: elderystate.currentTheme.iconTheme.size,
                      ),
                      label: 'Favorite',
                    ),
                  ],
                  currentIndex: state.index,
                  selectedItemColor: Colors.blueAccent[800],
                  onTap: (value) {
                    if (value == 0) {
                      Provider.of<ChangePageCubit>(context, listen: false)
                          .changeToHomeScreen();
                    } else {
                      Provider.of<FavouriteCubit>(context, listen: false)
                          .getJokesFromFirebase();
                      Provider.of<ChangePageCubit>(context, listen: false)
                          .changeToFavoriteScreen();
                    }
                  });
            },
          );
        },
      ),
    );
  }
}
