import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_joke_app_mmi/domain/entities/joke/joke.dart';
import 'package:http/http.dart' as http;

import '../../core/error/failures.dart';

abstract class JokeRemoteDataSource {
  Future<Either<ServerExeption, Joke>> getRandomJoke();
}

class JokeRemoteDataSourceImpl implements JokeRemoteDataSource {
  @override
  Future<Either<ServerExeption, Joke>> getRandomJoke() async {
    final response = await http
        .get(Uri.parse('https://v2.jokeapi.dev/joke/Programming?type=single'));

    if (response.statusCode == 200) {
      return Right(Joke.fromJson(json.decode(response.body)));
    } else {
      return Left(ServerExeption());
    }
  }
}
