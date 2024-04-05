import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
import 'package:flutter_joke_app_mmi/features/authorization/presentation/cubit/authorization_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLoginButton extends StatelessWidget {
  const AppLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    const buttonMaxWidth = 190.0;
    const assetName = 'lib/core/assets/images/google_light.png';
    return SizedBox(
      height: AppDimensions.signInButtonHeight,
      child: MaterialButton(
        onPressed: () => context.read<AuthorizationCubit>().signIn(),
        color: AppColors.signInButton,
        child: Container(
          constraints: const BoxConstraints(maxWidth: buttonMaxWidth),
          child: Center(
            child: Padding(
              padding: AppPadding.signInButton,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(assetName)),
                  Text(
                    AppLocalizations.of(context)!.singIn,
                    style: const TextStyle(color: AppColors.darkCoral),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
