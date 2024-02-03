// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lint, implicit_dynamic_parameter, implicit_dynamic_type

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Joke _$$_JokeFromJson(Map<String, dynamic> json) => _$_Joke(
      error: json['error'] as bool,
      joke: json['joke'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_JokeToJson(_$_Joke instance) => <String, dynamic>{
      'error': instance.error,
      'joke': instance.joke,
      'id': instance.id,
    };
