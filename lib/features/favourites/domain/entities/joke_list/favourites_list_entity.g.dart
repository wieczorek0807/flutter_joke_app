// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lint, implicit_dynamic_parameter, implicit_dynamic_type

part of 'favourites_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouritesListEntityImpl _$$FavouritesListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouritesListEntityImpl(
      jokeList: (json['jokeList'] as List<dynamic>)
          .map((e) => JokeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FavouritesListEntityImplToJson(
        _$FavouritesListEntityImpl instance) =>
    <String, dynamic>{
      'jokeList': instance.jokeList.map((e) => e.toJson()).toList(),
    };
