import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_joke_app_mmi/core/error/failures.dart';
import 'package:flutter_joke_app_mmi/features/favourites/data/joke_firebase_data_source.dart';
import 'package:flutter_joke_app_mmi/features/joke/data/joke_remote_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/joke/joke_entity.dart';

part 'joke_state.dart';
part 'joke_cubit.freezed.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(const JokeState.initial());

  void getNewJoke() async {
    try {
      emit(const JokeState.loading());
      final Either<ServerExeption, JokeEntity> jokeFromApi = await JokeRemoteDataSourceImpl().getRandomJoke();

      jokeFromApi.fold((l) => emit(JokeState.error(l.toString())), (r) => emit(JokeState.loaded(r)));
    } catch (e) {
      emit(JokeState.error(e.toString()));
    }
  }

  void addJokeToFirebase() async {
    state.maybeWhen(
        orElse: () {},
        loaded: (joke) async {
          try {
            await JokeFirebaseDataSource().addJokesToFirebase(joke);
            getNewJoke();
          } catch (e) {
            emit(JokeState.error('addJokeToFirebase error $e'));
          }
        });
  }
}
