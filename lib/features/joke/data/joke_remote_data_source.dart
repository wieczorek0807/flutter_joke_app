import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_joke_app_mmi/features/joke/domain/entities/joke/joke_entity.dart';
import 'package:http/http.dart' as http;

import '../../../core/error/failures.dart';

abstract class JokeRemoteDataSource {
  Future<Either<ServerExeption, JokeEntity>> getRandomJoke();
}

class JokeRemoteDataSourceImpl implements JokeRemoteDataSource {
  @override
  Future<Either<ServerExeption, JokeEntity>> getRandomJoke() async {
    final response = await http.get(Uri.parse('https://v2.jokeapi.dev/joke/Programming?type=single'));

    if (response.statusCode == 200) {
      return Right(JokeEntity.fromJson(json.decode(response.body)));
    } else {
      return Left(ServerExeption());
    }
  }
}
