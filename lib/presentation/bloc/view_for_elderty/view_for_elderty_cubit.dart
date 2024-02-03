import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/view_for_elderty/view_for_elderty_state.dart';

class ViewForEldertyCubit extends Cubit<ViewForEldertyState> {
  static const _bigTextSize = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.w700,
    fontSize: 62,
    height: 1,
  );

  static const _smallTextSize = TextStyle(
    color: Colors.orange,
    fontWeight: FontWeight.w700,
    fontSize: 15,
    height: 1,
  );

  static final ThemeData _bigSizeTheme = ThemeData(
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(iconSize: MaterialStatePropertyAll(40))),
    iconTheme: const IconThemeData(size: 50),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 30),
      titleLarge: TextStyle(
        fontSize: 40,
      ),
      bodyMedium: TextStyle(
        fontSize: 34.0,
      ),
      labelLarge: TextStyle(
        fontSize: 26.0,
      ),
      titleMedium: TextStyle(
        fontSize: 26.0,
      ),
      titleSmall: TextStyle(
        fontSize: 26.0,
      ),
      displaySmall: TextStyle(
        fontSize: 26.0,
      ),
      displayLarge: TextStyle(
        fontSize: 26.0,
      ),
      displayMedium: TextStyle(
        fontSize: 26.0,
      ),
    ),
  );

  static final ThemeData _smallSizeTheme = ThemeData();

  ViewForEldertyCubit()
      : super(ViewForEldertyState(false, _smallTextSize, _smallSizeTheme));

  void changeViewState() {
    if (state.stateOfElderyView) {
      emit(ViewForEldertyState(false, _smallTextSize, _smallSizeTheme));
    } else {
      emit(ViewForEldertyState(true, _bigTextSize, _bigSizeTheme));
    }
  }
}
