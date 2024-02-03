import 'package:flutter_joke_app_mmi/domain/entities/joke/joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'joke_list.freezed.dart';
part 'joke_list.g.dart';

@freezed
class JokeList with _$JokeList {
  const factory JokeList(
      // ignore: invalid_annotation_target
      {@JsonSerializable(explicitToJson: true)
          required List<Joke> jokeList}) = _JokeList;

  factory JokeList.fromJson(Map<String, dynamic> json) =>
      _$JokeListFromJson(json);
}
