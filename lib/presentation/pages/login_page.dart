import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/presentation/pages/main_page.dart';

import '../bloc/login/auth_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const MainPage();
          } else {
            return Center(
                child: ElevatedButton.icon(
              icon: const Icon(Icons.login),
              onPressed: context.read<AuthCubit>().signIn,
              label: const Text('Sign in with Google'),
            ));
          }
        });
  }
}
