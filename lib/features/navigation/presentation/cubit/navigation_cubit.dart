import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.home(0));

  void changeToHomeScreen() {
    emit(const NavigationState.home(0));
  }

  void changeToFavoureitesScreen() {
    emit(const NavigationState.favourites(1));
  }
}
