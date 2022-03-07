// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pill_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PillDto _$PillDtoFromJson(Map<String, dynamic> json) {
  return _PillDto.fromJson(json);
}

/// @nodoc
class _$PillDtoTearOff {
  const _$PillDtoTearOff();

  _PillDto call(
      {@JsonKey(ignore: true) String? id,
      required String pillName,
      required int pillNumber,
      required String pillUnit,
      required DateTime timeOfDay}) {
    return _PillDto(
      id: id,
      pillName: pillName,
      pillNumber: pillNumber,
      pillUnit: pillUnit,
      timeOfDay: timeOfDay,
    );
  }

  PillDto fromJson(Map<String, Object?> json) {
    return PillDto.fromJson(json);
  }
}

/// @nodoc
const $PillDto = _$PillDtoTearOff();

/// @nodoc
mixin _$PillDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get pillName => throw _privateConstructorUsedError;
  int get pillNumber => throw _privateConstructorUsedError;
  String get pillUnit => throw _privateConstructorUsedError;
  DateTime get timeOfDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PillDtoCopyWith<PillDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillDtoCopyWith<$Res> {
  factory $PillDtoCopyWith(PillDto value, $Res Function(PillDto) then) =
      _$PillDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String pillName,
      int pillNumber,
      String pillUnit,
      DateTime timeOfDay});
}

/// @nodoc
class _$PillDtoCopyWithImpl<$Res> implements $PillDtoCopyWith<$Res> {
  _$PillDtoCopyWithImpl(this._value, this._then);

  final PillDto _value;
  // ignore: unused_field
  final $Res Function(PillDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pillName = freezed,
    Object? pillNumber = freezed,
    Object? pillUnit = freezed,
    Object? timeOfDay = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pillName: pillName == freezed
          ? _value.pillName
          : pillName // ignore: cast_nullable_to_non_nullable
              as String,
      pillNumber: pillNumber == freezed
          ? _value.pillNumber
          : pillNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pillUnit: pillUnit == freezed
          ? _value.pillUnit
          : pillUnit // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfDay: timeOfDay == freezed
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PillDtoCopyWith<$Res> implements $PillDtoCopyWith<$Res> {
  factory _$PillDtoCopyWith(_PillDto value, $Res Function(_PillDto) then) =
      __$PillDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String pillName,
      int pillNumber,
      String pillUnit,
      DateTime timeOfDay});
}

/// @nodoc
class __$PillDtoCopyWithImpl<$Res> extends _$PillDtoCopyWithImpl<$Res>
    implements _$PillDtoCopyWith<$Res> {
  __$PillDtoCopyWithImpl(_PillDto _value, $Res Function(_PillDto) _then)
      : super(_value, (v) => _then(v as _PillDto));

  @override
  _PillDto get _value => super._value as _PillDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? pillName = freezed,
    Object? pillNumber = freezed,
    Object? pillUnit = freezed,
    Object? timeOfDay = freezed,
  }) {
    return _then(_PillDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pillName: pillName == freezed
          ? _value.pillName
          : pillName // ignore: cast_nullable_to_non_nullable
              as String,
      pillNumber: pillNumber == freezed
          ? _value.pillNumber
          : pillNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pillUnit: pillUnit == freezed
          ? _value.pillUnit
          : pillUnit // ignore: cast_nullable_to_non_nullable
              as String,
      timeOfDay: timeOfDay == freezed
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PillDto extends _PillDto {
  const _$_PillDto(
      {@JsonKey(ignore: true) this.id,
      required this.pillName,
      required this.pillNumber,
      required this.pillUnit,
      required this.timeOfDay})
      : super._();

  factory _$_PillDto.fromJson(Map<String, dynamic> json) =>
      _$$_PillDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String pillName;
  @override
  final int pillNumber;
  @override
  final String pillUnit;
  @override
  final DateTime timeOfDay;

  @override
  String toString() {
    return 'PillDto(id: $id, pillName: $pillName, pillNumber: $pillNumber, pillUnit: $pillUnit, timeOfDay: $timeOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PillDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.pillName, pillName) &&
            const DeepCollectionEquality()
                .equals(other.pillNumber, pillNumber) &&
            const DeepCollectionEquality().equals(other.pillUnit, pillUnit) &&
            const DeepCollectionEquality().equals(other.timeOfDay, timeOfDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pillName),
      const DeepCollectionEquality().hash(pillNumber),
      const DeepCollectionEquality().hash(pillUnit),
      const DeepCollectionEquality().hash(timeOfDay));

  @JsonKey(ignore: true)
  @override
  _$PillDtoCopyWith<_PillDto> get copyWith =>
      __$PillDtoCopyWithImpl<_PillDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PillDtoToJson(this);
  }
}

abstract class _PillDto extends PillDto {
  const factory _PillDto(
      {@JsonKey(ignore: true) String? id,
      required String pillName,
      required int pillNumber,
      required String pillUnit,
      required DateTime timeOfDay}) = _$_PillDto;
  const _PillDto._() : super._();

  factory _PillDto.fromJson(Map<String, dynamic> json) = _$_PillDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get pillName;
  @override
  int get pillNumber;
  @override
  String get pillUnit;
  @override
  DateTime get timeOfDay;
  @override
  @JsonKey(ignore: true)
  _$PillDtoCopyWith<_PillDto> get copyWith =>
      throw _privateConstructorUsedError;
}
