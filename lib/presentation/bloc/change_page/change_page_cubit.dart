import 'package:flutter_bloc/flutter_bloc.dart';

import 'change_page_state.dart';

class ChangePageCubit extends Cubit<ChangePageState> {
  ChangePageCubit() : super(HomeScreenState(0));

  void changeToHomeScreen() => emit(HomeScreenState(0));
  void changeToFavoriteScreen() {
    emit(FavoriteScreenState(1));
  }
}
