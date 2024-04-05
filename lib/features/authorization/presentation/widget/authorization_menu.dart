import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
import 'package:flutter_joke_app_mmi/features/authorization/presentation/widget/app_login_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/presentation/styles/styles.dart';

class AuthorizationMenu extends StatelessWidget {
  const AuthorizationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.appTitle,
          style: TextStyles.logo,
        ),
        const SizedBox(
          height: AppDimensions.authorization,
        ),
        Text(
          AppLocalizations.of(context)!.menuText,
          style: TextStyles.authorizationText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppDimensions.authorization,
        ),
        const AppLoginButton(),
      ],
    );
  }
}
