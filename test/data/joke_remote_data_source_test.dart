import 'package:flutter_joke_app_mmi/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_joke_app_mmi/data/datasources/joke_remote_data_source.dart';
import 'package:flutter_joke_app_mmi/domain/entities/joke/joke.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check joke API', () async {
    final Either<ServerExeption, Joke> jokeFromApi =
        await JokeRemoteDataSourceImpl().getRandomJoke();
    print(jokeFromApi);
  });
  test('Test using json two', () {});
}
