
import 'package:flutter_joke_app_mmi/domain/entities/joke/joke.dart';

abstract class FavouriteState {}

class FavouriteLoading extends FavouriteState {}

class FavouriteLoaded extends FavouriteState {
  final List<Joke> jokeList;

  FavouriteLoaded(this.jokeList);
}

class FavouriteError extends FavouriteState {
  final String message;

  FavouriteError(this.message);
}
