// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PillTearOff {
  const _$PillTearOff();

  _Pill call({required UniqueId id, required PillName pillName}) {
    return _Pill(
      id: id,
      pillName: pillName,
    );
  }
}

/// @nodoc
const $Pill = _$PillTearOff();

/// @nodoc
mixin _$Pill {
  UniqueId get id => throw _privateConstructorUsedError;
  PillName get pillName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PillCopyWith<Pill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillCopyWith<$Res> {
  factory $PillCopyWith(Pill value, $Res Function(Pill) then) =
      _$PillCopyWithImpl<$Res>;
  $Res call({UniqueId id, PillName pillName});
}

/// @nodoc
class _$PillCopyWithImpl<$Res> implements $PillCopyWith<$Res> {
  _$PillCopyWithImpl(this._value, this._then);

  final Pill _value;
  // ignore: unused_field
  final $Res Function(Pill) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pillName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      pillName: pillName == freezed
          ? _value.pillName
          : pillName // ignore: cast_nullable_to_non_nullable
              as PillName,
    ));
  }
}

/// @nodoc
abstract class _$PillCopyWith<$Res> implements $PillCopyWith<$Res> {
  factory _$PillCopyWith(_Pill value, $Res Function(_Pill) then) =
      __$PillCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, PillName pillName});
}

/// @nodoc
class __$PillCopyWithImpl<$Res> extends _$PillCopyWithImpl<$Res>
    implements _$PillCopyWith<$Res> {
  __$PillCopyWithImpl(_Pill _value, $Res Function(_Pill) _then)
      : super(_value, (v) => _then(v as _Pill));

  @override
  _Pill get _value => super._value as _Pill;

  @override
  $Res call({
    Object? id = freezed,
    Object? pillName = freezed,
  }) {
    return _then(_Pill(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      pillName: pillName == freezed
          ? _value.pillName
          : pillName // ignore: cast_nullable_to_non_nullable
              as PillName,
    ));
  }
}

/// @nodoc

class _$_Pill extends _Pill {
  const _$_Pill({required this.id, required this.pillName}) : super._();

  @override
  final UniqueId id;
  @override
  final PillName pillName;

  @override
  String toString() {
    return 'Pill(id: $id, pillName: $pillName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pill &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.pillName, pillName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pillName));

  @JsonKey(ignore: true)
  @override
  _$PillCopyWith<_Pill> get copyWith =>
      __$PillCopyWithImpl<_Pill>(this, _$identity);
}

abstract class _Pill extends Pill {
  const factory _Pill({required UniqueId id, required PillName pillName}) =
      _$_Pill;
  const _Pill._() : super._();

  @override
  UniqueId get id;
  @override
  PillName get pillName;
  @override
  @JsonKey(ignore: true)
  _$PillCopyWith<_Pill> get copyWith => throw _privateConstructorUsedError;
}
