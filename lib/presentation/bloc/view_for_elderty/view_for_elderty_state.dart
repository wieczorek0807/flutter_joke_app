import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewForEldertyState extends Equatable {
  final bool stateOfElderyView;
  final TextStyle currentTextStyle;
  final ThemeData currentTheme;

  ViewForEldertyState(
      this.stateOfElderyView, this.currentTextStyle, this.currentTheme);

  @override
  List<Object?> get props =>
      [stateOfElderyView, currentTextStyle, currentTheme];
}
