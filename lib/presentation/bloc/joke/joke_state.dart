import '../../../domain/entities/joke/joke.dart';

abstract class JokeState {}

class JokeInitial extends JokeState {
  final String message;

  JokeInitial(this.message);
}

class JokeLoading extends JokeState {}

class JokeSuccess extends JokeState {
  final Joke joke;

  JokeSuccess(this.joke);
}

class JokeError extends JokeState {
  final String message;

  JokeError(this.message);
}
