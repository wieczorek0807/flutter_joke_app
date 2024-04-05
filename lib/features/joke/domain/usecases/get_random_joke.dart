import 'package:dartz/dartz.dart';
import 'package:flutter_joke_app_mmi/core/error/failures.dart';
import 'package:flutter_joke_app_mmi/features/joke/data/joke_remote_data_source.dart';
import 'package:flutter_joke_app_mmi/features/joke/domain/entities/joke/joke_entity.dart';

class GetRandomJoke {
  final JokeRemoteDataSource remoteDataSource;

  GetRandomJoke(this.remoteDataSource);

  Future<Either<ServerExeption, JokeEntity>> call() async {
    return await remoteDataSource.getRandomJoke();
  }
}
