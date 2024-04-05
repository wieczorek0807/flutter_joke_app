import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/features/authorization/presentation/cubit/authorization_cubit.dart';
import 'package:flutter_joke_app_mmi/features/favourites/presentation/cubit/favourite_cubit.dart';
import 'package:flutter_joke_app_mmi/features/joke/presentation/cubit/joke_cubit.dart';
import 'package:flutter_joke_app_mmi/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:flutter_joke_app_mmi/firebase_options.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  getIt.registerSingleton<AuthorizationCubit>(AuthorizationCubit());
  getIt.registerSingleton<NavigationCubit>(NavigationCubit());
  getIt.registerSingleton<FavouriteCubit>(FavouriteCubit());
  getIt.registerSingleton<JokeCubit>(JokeCubit()..getNewJoke());
}
