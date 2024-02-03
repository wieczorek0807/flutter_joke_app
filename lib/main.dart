import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/firebase_options.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/change_page/change_page_cubit.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/favourite/favourite_cubit.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/joke/joke_cubit.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/view_for_elderty/view_for_elderty_cubit.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/view_for_elderty/view_for_elderty_state.dart';
import 'package:flutter_joke_app_mmi/presentation/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'presentation/bloc/login/auth_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const JokeApp());
}

class JokeApp extends StatelessWidget {
  const JokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ViewForEldertyCubit>(
              create: (context) => ViewForEldertyCubit()),
          BlocProvider<ChangePageCubit>(create: (context) => ChangePageCubit()),
          BlocProvider<JokeCubit>(create: (context) => JokeCubit()),
          BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
          BlocProvider<FavouriteCubit>(create: (context) => FavouriteCubit())
        ],
        child: BlocBuilder<ViewForEldertyCubit, ViewForEldertyState>(
          builder: (context, state) {
            return MaterialApp(
              theme: state.currentTheme,
              home: const Scaffold(
                body: LoginPage(),
              ),

              //
            );
          },
        ));
  }
}
