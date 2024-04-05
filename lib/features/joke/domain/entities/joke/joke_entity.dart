import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'joke_entity.freezed.dart';

part 'joke_entity.g.dart';

@freezed
class JokeEntity with _$JokeEntity {
  const factory JokeEntity({
    required bool error,
    required String joke,
    required int id,
  }) = _JokeEntity;

  factory JokeEntity.fromJson(Map<String, dynamic> json) => _$JokeEntityFromJson(json);
}
