// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeList _$JokeListFromJson(Map<String, dynamic> json) {
  return _JokeList.fromJson(json);
}

/// @nodoc
mixin _$JokeList {
  @JsonSerializable(explicitToJson: true)
  List<Joke> get jokeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeListCopyWith<JokeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeListCopyWith<$Res> {
  factory $JokeListCopyWith(JokeList value, $Res Function(JokeList) then) =
      _$JokeListCopyWithImpl<$Res, JokeList>;
  @useResult
  $Res call({@JsonSerializable(explicitToJson: true) List<Joke> jokeList});
}

/// @nodoc
class _$JokeListCopyWithImpl<$Res, $Val extends JokeList>
    implements $JokeListCopyWith<$Res> {
  _$JokeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokeList = null,
  }) {
    return _then(_value.copyWith(
      jokeList: null == jokeList
          ? _value.jokeList
          : jokeList // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeListCopyWith<$Res> implements $JokeListCopyWith<$Res> {
  factory _$$_JokeListCopyWith(
          _$_JokeList value, $Res Function(_$_JokeList) then) =
      __$$_JokeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonSerializable(explicitToJson: true) List<Joke> jokeList});
}

/// @nodoc
class __$$_JokeListCopyWithImpl<$Res>
    extends _$JokeListCopyWithImpl<$Res, _$_JokeList>
    implements _$$_JokeListCopyWith<$Res> {
  __$$_JokeListCopyWithImpl(
      _$_JokeList _value, $Res Function(_$_JokeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokeList = null,
  }) {
    return _then(_$_JokeList(
      jokeList: null == jokeList
          ? _value._jokeList
          : jokeList // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeList with DiagnosticableTreeMixin implements _JokeList {
  const _$_JokeList(
      {@JsonSerializable(explicitToJson: true)
          required final List<Joke> jokeList})
      : _jokeList = jokeList;

  factory _$_JokeList.fromJson(Map<String, dynamic> json) =>
      _$$_JokeListFromJson(json);

  final List<Joke> _jokeList;
  @override
  @JsonSerializable(explicitToJson: true)
  List<Joke> get jokeList {
    if (_jokeList is EqualUnmodifiableListView) return _jokeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokeList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JokeList(jokeList: $jokeList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JokeList'))
      ..add(DiagnosticsProperty('jokeList', jokeList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeList &&
            const DeepCollectionEquality().equals(other._jokeList, _jokeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jokeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeListCopyWith<_$_JokeList> get copyWith =>
      __$$_JokeListCopyWithImpl<_$_JokeList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeListToJson(
      this,
    );
  }
}

abstract class _JokeList implements JokeList {
  const factory _JokeList(
      {@JsonSerializable(explicitToJson: true)
          required final List<Joke> jokeList}) = _$_JokeList;

  factory _JokeList.fromJson(Map<String, dynamic> json) = _$_JokeList.fromJson;

  @override
  @JsonSerializable(explicitToJson: true)
  List<Joke> get jokeList;
  @override
  @JsonKey(ignore: true)
  _$$_JokeListCopyWith<_$_JokeList> get copyWith =>
      throw _privateConstructorUsedError;
}
