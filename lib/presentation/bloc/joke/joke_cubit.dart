import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/data/datasources/joke_firebase_data_source.dart';

import '../../../core/error/failures.dart';
import '../../../data/datasources/joke_remote_data_source.dart';
import '../../../domain/entities/joke/joke.dart';
import 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(JokeInitial('asdasdasd'));

  void getNewJoke() async {
    try {
      emit(JokeLoading());
      final Either<ServerExeption, Joke> jokeFromApi =
          await JokeRemoteDataSourceImpl().getRandomJoke();

      jokeFromApi.fold(
          (l) => emit(JokeError(l.toString())), (r) => emit(JokeSuccess(r)));
    } catch (e) {
      emit(JokeError('JokeState error'));
    }
  }

  void addJokeToFirebase(Joke jokeToAdd) async {
    try {
      await JokeFirebaseDataSource().addJokesToFirebase(jokeToAdd);

      getNewJoke();
    } catch (e) {
      emit(JokeError('JokeState error'));
    }
  }
}
