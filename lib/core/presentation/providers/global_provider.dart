import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/core/injection/injection_container.dart';
import 'package:flutter_joke_app_mmi/features/authorization/presentation/cubit/authorization_cubit.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/cubit/favourite_cubit.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/cubit/joke_cubit.dart';
import 'package:flutter_joke_app_mmi/features/navigation/presentation/cubit/navigation_cubit.dart';

class GlobalProvider extends StatelessWidget {
  const GlobalProvider({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<NavigationCubit>()),
        BlocProvider(create: (_) => getIt<JokeCubit>()),
        BlocProvider(create: (_) => getIt<AuthorizationCubit>()),
        BlocProvider(create: (_) => getIt<FavouriteCubit>()),
      ],
      child: child,
    );
  }
}
