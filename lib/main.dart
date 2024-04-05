import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/providers/global_provider.dart';
import 'package:flutter_joke_app_mmi/core/router/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_joke_app_mmi/core/injection/injection_container.dart' as injection_container;

Future<void> main() async {
  await injection_container.setup();
  runApp(const JokeApp());
}

class JokeApp extends StatelessWidget {
  const JokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return GlobalProvider(
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
