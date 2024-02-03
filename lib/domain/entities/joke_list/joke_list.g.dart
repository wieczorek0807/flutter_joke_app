// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lint, implicit_dynamic_parameter, implicit_dynamic_type

part of 'joke_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JokeList _$$_JokeListFromJson(Map<String, dynamic> json) => _$_JokeList(
      jokeList: (json['jokeList'] as List<dynamic>)
          .map((e) => Joke.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JokeListToJson(_$_JokeList instance) =>
    <String, dynamic>{
      'jokeList': instance.jokeList.map((e) => e.toJson()).toList(),
    };
