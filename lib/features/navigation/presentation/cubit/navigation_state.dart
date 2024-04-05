part of 'navigation_cubit.dart';

enum NavigationStateEnum { home, favourite }

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.home(int index) = _Home;
  const factory NavigationState.favourites(int index) = _Favourites;
}
