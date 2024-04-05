import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/core/presentation/values/values.dart';
import 'package:flutter_joke_app_mmi/core/presentation/widgets/app_circular_progress_indicator.dart';
import 'package:flutter_joke_app_mmi/core/router/app_router.dart';
import 'package:flutter_joke_app_mmi/features/authorization/presentation/cubit/authorization_cubit.dart';
import 'package:flutter_joke_app_mmi/features/authorization/presentation/widget/authorization_menu.dart';

@RoutePage()
class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(child: BlocBuilder<AuthorizationCubit, AuthorizationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Text('orelse'),
            initial: () => const AuthorizationMenu(),
            loading: () => const AppCircularProgressIndicator(),
            success: () {
              context.router.push(const NavigationRoute());
              return const SizedBox.shrink();
            },
            error: (error) => Text(error),
          );
        },
      )),
    );
  }
}
