// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
mixin _$Joke {
  bool get error => throw _privateConstructorUsedError;
  String get joke => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res, Joke>;
  @useResult
  $Res call({bool error, String joke, int id});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res, $Val extends Joke>
    implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? joke = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$$_JokeCopyWith(_$_Joke value, $Res Function(_$_Joke) then) =
      __$$_JokeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String joke, int id});
}

/// @nodoc
class __$$_JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res, _$_Joke>
    implements _$$_JokeCopyWith<$Res> {
  __$$_JokeCopyWithImpl(_$_Joke _value, $Res Function(_$_Joke) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? joke = null,
    Object? id = null,
  }) {
    return _then(_$_Joke(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Joke with DiagnosticableTreeMixin implements _Joke {
  const _$_Joke({required this.error, required this.joke, required this.id});

  factory _$_Joke.fromJson(Map<String, dynamic> json) => _$$_JokeFromJson(json);

  @override
  final bool error;
  @override
  final String joke;
  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Joke(error: $error, joke: $joke, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Joke'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('joke', joke))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Joke &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, joke, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeCopyWith<_$_Joke> get copyWith =>
      __$$_JokeCopyWithImpl<_$_Joke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeToJson(
      this,
    );
  }
}

abstract class _Joke implements Joke {
  const factory _Joke(
      {required final bool error,
      required final String joke,
      required final int id}) = _$_Joke;

  factory _Joke.fromJson(Map<String, dynamic> json) = _$_Joke.fromJson;

  @override
  bool get error;
  @override
  String get joke;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_JokeCopyWith<_$_Joke> get copyWith => throw _privateConstructorUsedError;
}
