import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_joke_app_mmi/firebase_options.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check joke API', () async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  });
}
