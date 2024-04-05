// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JokeEntity _$JokeEntityFromJson(Map<String, dynamic> json) {
  return _JokeEntity.fromJson(json);
}

/// @nodoc
mixin _$JokeEntity {
  bool get error => throw _privateConstructorUsedError;
  String get joke => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeEntityCopyWith<JokeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeEntityCopyWith<$Res> {
  factory $JokeEntityCopyWith(
          JokeEntity value, $Res Function(JokeEntity) then) =
      _$JokeEntityCopyWithImpl<$Res, JokeEntity>;
  @useResult
  $Res call({bool error, String joke, int id});
}

/// @nodoc
class _$JokeEntityCopyWithImpl<$Res, $Val extends JokeEntity>
    implements $JokeEntityCopyWith<$Res> {
  _$JokeEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$JokeEntityImplCopyWith<$Res>
    implements $JokeEntityCopyWith<$Res> {
  factory _$$JokeEntityImplCopyWith(
          _$JokeEntityImpl value, $Res Function(_$JokeEntityImpl) then) =
      __$$JokeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String joke, int id});
}

/// @nodoc
class __$$JokeEntityImplCopyWithImpl<$Res>
    extends _$JokeEntityCopyWithImpl<$Res, _$JokeEntityImpl>
    implements _$$JokeEntityImplCopyWith<$Res> {
  __$$JokeEntityImplCopyWithImpl(
      _$JokeEntityImpl _value, $Res Function(_$JokeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? joke = null,
    Object? id = null,
  }) {
    return _then(_$JokeEntityImpl(
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
class _$JokeEntityImpl with DiagnosticableTreeMixin implements _JokeEntity {
  const _$JokeEntityImpl(
      {required this.error, required this.joke, required this.id});

  factory _$JokeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$JokeEntityImplFromJson(json);

  @override
  final bool error;
  @override
  final String joke;
  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JokeEntity(error: $error, joke: $joke, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JokeEntity'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('joke', joke))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JokeEntityImpl &&
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
  _$$JokeEntityImplCopyWith<_$JokeEntityImpl> get copyWith =>
      __$$JokeEntityImplCopyWithImpl<_$JokeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JokeEntityImplToJson(
      this,
    );
  }
}

abstract class _JokeEntity implements JokeEntity {
  const factory _JokeEntity(
      {required final bool error,
      required final String joke,
      required final int id}) = _$JokeEntityImpl;

  factory _JokeEntity.fromJson(Map<String, dynamic> json) =
      _$JokeEntityImpl.fromJson;

  @override
  bool get error;
  @override
  String get joke;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$JokeEntityImplCopyWith<_$JokeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
