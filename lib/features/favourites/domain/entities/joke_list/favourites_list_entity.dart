import 'package:flutter_joke_app_mmi/features/joke/domain/entities/joke/joke_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'favourites_list_entity.freezed.dart';
part 'favourites_list_entity.g.dart';

@freezed
class FavouritesListEntity with _$FavouritesListEntity {
  const factory FavouritesListEntity(
      // ignore: invalid_annotation_target
      {@JsonSerializable(explicitToJson: true) required List<JokeEntity> jokeList}) = _FavouritesListEntity;

  factory FavouritesListEntity.fromJson(Map<String, dynamic> json) => _$FavouritesListEntityFromJson(json);
}
