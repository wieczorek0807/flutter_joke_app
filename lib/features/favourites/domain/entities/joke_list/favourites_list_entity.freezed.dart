// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouritesListEntity _$FavouritesListEntityFromJson(Map<String, dynamic> json) {
  return _FavouritesListEntity.fromJson(json);
}

/// @nodoc
mixin _$FavouritesListEntity {
  @JsonSerializable(explicitToJson: true)
  List<JokeEntity> get jokeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritesListEntityCopyWith<FavouritesListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesListEntityCopyWith<$Res> {
  factory $FavouritesListEntityCopyWith(FavouritesListEntity value,
          $Res Function(FavouritesListEntity) then) =
      _$FavouritesListEntityCopyWithImpl<$Res, FavouritesListEntity>;
  @useResult
  $Res call(
      {@JsonSerializable(explicitToJson: true) List<JokeEntity> jokeList});
}

/// @nodoc
class _$FavouritesListEntityCopyWithImpl<$Res,
        $Val extends FavouritesListEntity>
    implements $FavouritesListEntityCopyWith<$Res> {
  _$FavouritesListEntityCopyWithImpl(this._value, this._then);

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
              as List<JokeEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesListEntityImplCopyWith<$Res>
    implements $FavouritesListEntityCopyWith<$Res> {
  factory _$$FavouritesListEntityImplCopyWith(_$FavouritesListEntityImpl value,
          $Res Function(_$FavouritesListEntityImpl) then) =
      __$$FavouritesListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonSerializable(explicitToJson: true) List<JokeEntity> jokeList});
}

/// @nodoc
class __$$FavouritesListEntityImplCopyWithImpl<$Res>
    extends _$FavouritesListEntityCopyWithImpl<$Res, _$FavouritesListEntityImpl>
    implements _$$FavouritesListEntityImplCopyWith<$Res> {
  __$$FavouritesListEntityImplCopyWithImpl(_$FavouritesListEntityImpl _value,
      $Res Function(_$FavouritesListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokeList = null,
  }) {
    return _then(_$FavouritesListEntityImpl(
      jokeList: null == jokeList
          ? _value._jokeList
          : jokeList // ignore: cast_nullable_to_non_nullable
              as List<JokeEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouritesListEntityImpl
    with DiagnosticableTreeMixin
    implements _FavouritesListEntity {
  const _$FavouritesListEntityImpl(
      {@JsonSerializable(explicitToJson: true)
      required final List<JokeEntity> jokeList})
      : _jokeList = jokeList;

  factory _$FavouritesListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouritesListEntityImplFromJson(json);

  final List<JokeEntity> _jokeList;
  @override
  @JsonSerializable(explicitToJson: true)
  List<JokeEntity> get jokeList {
    if (_jokeList is EqualUnmodifiableListView) return _jokeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokeList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesListEntity(jokeList: $jokeList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouritesListEntity'))
      ..add(DiagnosticsProperty('jokeList', jokeList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesListEntityImpl &&
            const DeepCollectionEquality().equals(other._jokeList, _jokeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jokeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesListEntityImplCopyWith<_$FavouritesListEntityImpl>
      get copyWith =>
          __$$FavouritesListEntityImplCopyWithImpl<_$FavouritesListEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouritesListEntityImplToJson(
      this,
    );
  }
}

abstract class _FavouritesListEntity implements FavouritesListEntity {
  const factory _FavouritesListEntity(
      {@JsonSerializable(explicitToJson: true)
      required final List<JokeEntity> jokeList}) = _$FavouritesListEntityImpl;

  factory _FavouritesListEntity.fromJson(Map<String, dynamic> json) =
      _$FavouritesListEntityImpl.fromJson;

  @override
  @JsonSerializable(explicitToJson: true)
  List<JokeEntity> get jokeList;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesListEntityImplCopyWith<_$FavouritesListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
