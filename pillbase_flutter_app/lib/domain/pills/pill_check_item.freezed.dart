// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pill_check_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PillCheckItemTearOff {
  const _$PillCheckItemTearOff();

  _PillCheckItem call(
      {required UniqueId id, required DateTime dateTime, required bool check}) {
    return _PillCheckItem(
      id: id,
      dateTime: dateTime,
      check: check,
    );
  }
}

/// @nodoc
const $PillCheckItem = _$PillCheckItemTearOff();

/// @nodoc
mixin _$PillCheckItem {
  UniqueId get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get check => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PillCheckItemCopyWith<PillCheckItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillCheckItemCopyWith<$Res> {
  factory $PillCheckItemCopyWith(
          PillCheckItem value, $Res Function(PillCheckItem) then) =
      _$PillCheckItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, DateTime dateTime, bool check});
}

/// @nodoc
class _$PillCheckItemCopyWithImpl<$Res>
    implements $PillCheckItemCopyWith<$Res> {
  _$PillCheckItemCopyWithImpl(this._value, this._then);

  final PillCheckItem _value;
  // ignore: unused_field
  final $Res Function(PillCheckItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = freezed,
    Object? check = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      check: check == freezed
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PillCheckItemCopyWith<$Res>
    implements $PillCheckItemCopyWith<$Res> {
  factory _$PillCheckItemCopyWith(
          _PillCheckItem value, $Res Function(_PillCheckItem) then) =
      __$PillCheckItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, DateTime dateTime, bool check});
}

/// @nodoc
class __$PillCheckItemCopyWithImpl<$Res>
    extends _$PillCheckItemCopyWithImpl<$Res>
    implements _$PillCheckItemCopyWith<$Res> {
  __$PillCheckItemCopyWithImpl(
      _PillCheckItem _value, $Res Function(_PillCheckItem) _then)
      : super(_value, (v) => _then(v as _PillCheckItem));

  @override
  _PillCheckItem get _value => super._value as _PillCheckItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = freezed,
    Object? check = freezed,
  }) {
    return _then(_PillCheckItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      check: check == freezed
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PillCheckItem extends _PillCheckItem {
  const _$_PillCheckItem(
      {required this.id, required this.dateTime, required this.check})
      : super._();

  @override
  final UniqueId id;
  @override
  final DateTime dateTime;
  @override
  final bool check;

  @override
  String toString() {
    return 'PillCheckItem(id: $id, dateTime: $dateTime, check: $check)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PillCheckItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.check, check));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(check));

  @JsonKey(ignore: true)
  @override
  _$PillCheckItemCopyWith<_PillCheckItem> get copyWith =>
      __$PillCheckItemCopyWithImpl<_PillCheckItem>(this, _$identity);
}

abstract class _PillCheckItem extends PillCheckItem {
  const factory _PillCheckItem(
      {required UniqueId id,
      required DateTime dateTime,
      required bool check}) = _$_PillCheckItem;
  const _PillCheckItem._() : super._();

  @override
  UniqueId get id;
  @override
  DateTime get dateTime;
  @override
  bool get check;
  @override
  @JsonKey(ignore: true)
  _$PillCheckItemCopyWith<_PillCheckItem> get copyWith =>
      throw _privateConstructorUsedError;
}
