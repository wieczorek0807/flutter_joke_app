import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/features/favourites/data/joke_firebase_data_source.dart';
import 'package:flutter_joke_app_mmi/features/favourites/domain/entities/joke_list/favourites_list_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_state.dart';
part 'favourite_cubit.freezed.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(const FavouriteState.initial());

  void getJokesFromFirebase() async {
    emit(const FavouriteState.loading());
    try {
      final FavouritesListEntity jokesFromFirebase = await JokeFirebaseDataSource().getJokesFromFirebase();

      emit(FavouriteState.loaded(jokesFromFirebase));
    } catch (e) {
      emit(const FavouriteState.error('FavouriteError error message'));
    }
  }

  void removeJokeFromFirebase(int id) async {
    try {
      await JokeFirebaseDataSource().removeJokeFromFirebase(id);
      getJokesFromFirebase();
    } catch (e) {
      emit(FavouriteState.error(e.toString()));
    }
  }
}
