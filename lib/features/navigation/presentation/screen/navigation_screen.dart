import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/screen/joke_screen.dart';
import 'package:flutter_joke_app_mmi/features/navigation/presentation/widgets/app_bottom_navigation_bar.dart';
import '../../../favourites/presentation/screen/favorite_screen.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) => state.maybeWhen(
              home: (_) => const JokeScreen(), favourites: (_) => const FavoriteScreen(), orElse: () => const Text('Missing Screen State')),
        ),
        bottomNavigationBar: const AppBottomNavigationBar());
  }
}
