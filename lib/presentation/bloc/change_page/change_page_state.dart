abstract class ChangePageState {
  final int index;

  ChangePageState(this.index);
}

class HomeScreenState extends ChangePageState {
  HomeScreenState(super.index);
}

class FavoriteScreenState extends ChangePageState {
  FavoriteScreenState(super.index);
}
