// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lint, implicit_dynamic_parameter, implicit_dynamic_type

part of 'joke_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JokeEntityImpl _$$JokeEntityImplFromJson(Map<String, dynamic> json) =>
    _$JokeEntityImpl(
      error: json['error'] as bool,
      joke: json['joke'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$JokeEntityImplToJson(_$JokeEntityImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'joke': instance.joke,
      'id': instance.id,
    };
