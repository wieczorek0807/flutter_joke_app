import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/data/datasources/joke_firebase_data_source.dart';
import 'package:flutter_joke_app_mmi/presentation/bloc/favourite/favourite_state.dart';

import '../../../domain/entities/joke/joke.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteLoading());

  void getJokesFromFirebase() async {
    try {
      emit(FavouriteLoading());
      final List<Joke> jokesFromFirebase = await JokeFirebaseDataSource().getJokesFromFirebase();

      emit(FavouriteLoaded(jokesFromFirebase));
    } catch (e) {
      emit(FavouriteError('FavouriteError error message'));
    }
  }

  void removeJokeFromFirebase(int id) async {
    try {
      await JokeFirebaseDataSource().removeJokeFromFirebase(id);
      getJokesFromFirebase();
    } catch (e) {
      emit(FavouriteError('FavouriteError error message'));
    }
  }
}
