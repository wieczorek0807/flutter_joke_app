import 'package:dartz/dartz.dart';
import 'package:flutter_joke_app_mmi/core/error/failures.dart';
import 'package:flutter_joke_app_mmi/data/datasources/joke_remote_data_source.dart';
import 'package:flutter_joke_app_mmi/domain/entities/joke/joke.dart';

class GetRandomJoke {
  final JokeRemoteDataSource remoteDataSource;

  GetRandomJoke(this.remoteDataSource);

  Future<Either<ServerExeption, Joke>> call() async {
    return await remoteDataSource.getRandomJoke();
  }
}
