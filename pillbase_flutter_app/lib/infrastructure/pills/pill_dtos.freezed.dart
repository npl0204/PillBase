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
      required List<int?> notificationIds,
      required DateTime timeOfDay,
      required List<int> daysOfWeek,
      required List<bool> daysOfWeekBool,
      required DateTime pillDateTime,
      required String notifyId,
      required List<PillCheckItemDto> pillCheckItemsList}) {
    return _PillDto(
      id: id,
      pillName: pillName,
      pillNumber: pillNumber,
      pillUnit: pillUnit,
      notificationIds: notificationIds,
      timeOfDay: timeOfDay,
      daysOfWeek: daysOfWeek,
      daysOfWeekBool: daysOfWeekBool,
      pillDateTime: pillDateTime,
      notifyId: notifyId,
      pillCheckItemsList: pillCheckItemsList,
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
  List<int?> get notificationIds => throw _privateConstructorUsedError;
  DateTime get timeOfDay => throw _privateConstructorUsedError;
  List<int> get daysOfWeek => throw _privateConstructorUsedError;
  List<bool> get daysOfWeekBool => throw _privateConstructorUsedError;
  DateTime get pillDateTime => throw _privateConstructorUsedError;
  String get notifyId => throw _privateConstructorUsedError;
  List<PillCheckItemDto> get pillCheckItemsList =>
      throw _privateConstructorUsedError;

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
      List<int?> notificationIds,
      DateTime timeOfDay,
      List<int> daysOfWeek,
      List<bool> daysOfWeekBool,
      DateTime pillDateTime,
      String notifyId,
      List<PillCheckItemDto> pillCheckItemsList});
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
    Object? notificationIds = freezed,
    Object? timeOfDay = freezed,
    Object? daysOfWeek = freezed,
    Object? daysOfWeekBool = freezed,
    Object? pillDateTime = freezed,
    Object? notifyId = freezed,
    Object? pillCheckItemsList = freezed,
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
      notificationIds: notificationIds == freezed
          ? _value.notificationIds
          : notificationIds // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      timeOfDay: timeOfDay == freezed
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysOfWeek: daysOfWeek == freezed
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as List<int>,
      daysOfWeekBool: daysOfWeekBool == freezed
          ? _value.daysOfWeekBool
          : daysOfWeekBool // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      pillDateTime: pillDateTime == freezed
          ? _value.pillDateTime
          : pillDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notifyId: notifyId == freezed
          ? _value.notifyId
          : notifyId // ignore: cast_nullable_to_non_nullable
              as String,
      pillCheckItemsList: pillCheckItemsList == freezed
          ? _value.pillCheckItemsList
          : pillCheckItemsList // ignore: cast_nullable_to_non_nullable
              as List<PillCheckItemDto>,
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
      List<int?> notificationIds,
      DateTime timeOfDay,
      List<int> daysOfWeek,
      List<bool> daysOfWeekBool,
      DateTime pillDateTime,
      String notifyId,
      List<PillCheckItemDto> pillCheckItemsList});
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
    Object? notificationIds = freezed,
    Object? timeOfDay = freezed,
    Object? daysOfWeek = freezed,
    Object? daysOfWeekBool = freezed,
    Object? pillDateTime = freezed,
    Object? notifyId = freezed,
    Object? pillCheckItemsList = freezed,
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
      notificationIds: notificationIds == freezed
          ? _value.notificationIds
          : notificationIds // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      timeOfDay: timeOfDay == freezed
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysOfWeek: daysOfWeek == freezed
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as List<int>,
      daysOfWeekBool: daysOfWeekBool == freezed
          ? _value.daysOfWeekBool
          : daysOfWeekBool // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      pillDateTime: pillDateTime == freezed
          ? _value.pillDateTime
          : pillDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notifyId: notifyId == freezed
          ? _value.notifyId
          : notifyId // ignore: cast_nullable_to_non_nullable
              as String,
      pillCheckItemsList: pillCheckItemsList == freezed
          ? _value.pillCheckItemsList
          : pillCheckItemsList // ignore: cast_nullable_to_non_nullable
              as List<PillCheckItemDto>,
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
      required this.notificationIds,
      required this.timeOfDay,
      required this.daysOfWeek,
      required this.daysOfWeekBool,
      required this.pillDateTime,
      required this.notifyId,
      required this.pillCheckItemsList})
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
  final List<int?> notificationIds;
  @override
  final DateTime timeOfDay;
  @override
  final List<int> daysOfWeek;
  @override
  final List<bool> daysOfWeekBool;
  @override
  final DateTime pillDateTime;
  @override
  final String notifyId;
  @override
  final List<PillCheckItemDto> pillCheckItemsList;

  @override
  String toString() {
    return 'PillDto(id: $id, pillName: $pillName, pillNumber: $pillNumber, pillUnit: $pillUnit, notificationIds: $notificationIds, timeOfDay: $timeOfDay, daysOfWeek: $daysOfWeek, daysOfWeekBool: $daysOfWeekBool, pillDateTime: $pillDateTime, notifyId: $notifyId, pillCheckItemsList: $pillCheckItemsList)';
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
            const DeepCollectionEquality()
                .equals(other.notificationIds, notificationIds) &&
            const DeepCollectionEquality().equals(other.timeOfDay, timeOfDay) &&
            const DeepCollectionEquality()
                .equals(other.daysOfWeek, daysOfWeek) &&
            const DeepCollectionEquality()
                .equals(other.daysOfWeekBool, daysOfWeekBool) &&
            const DeepCollectionEquality()
                .equals(other.pillDateTime, pillDateTime) &&
            const DeepCollectionEquality().equals(other.notifyId, notifyId) &&
            const DeepCollectionEquality()
                .equals(other.pillCheckItemsList, pillCheckItemsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pillName),
      const DeepCollectionEquality().hash(pillNumber),
      const DeepCollectionEquality().hash(pillUnit),
      const DeepCollectionEquality().hash(notificationIds),
      const DeepCollectionEquality().hash(timeOfDay),
      const DeepCollectionEquality().hash(daysOfWeek),
      const DeepCollectionEquality().hash(daysOfWeekBool),
      const DeepCollectionEquality().hash(pillDateTime),
      const DeepCollectionEquality().hash(notifyId),
      const DeepCollectionEquality().hash(pillCheckItemsList));

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
      required List<int?> notificationIds,
      required DateTime timeOfDay,
      required List<int> daysOfWeek,
      required List<bool> daysOfWeekBool,
      required DateTime pillDateTime,
      required String notifyId,
      required List<PillCheckItemDto> pillCheckItemsList}) = _$_PillDto;
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
  List<int?> get notificationIds;
  @override
  DateTime get timeOfDay;
  @override
  List<int> get daysOfWeek;
  @override
  List<bool> get daysOfWeekBool;
  @override
  DateTime get pillDateTime;
  @override
  String get notifyId;
  @override
  List<PillCheckItemDto> get pillCheckItemsList;
  @override
  @JsonKey(ignore: true)
  _$PillDtoCopyWith<_PillDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PillCheckItemDto _$PillCheckItemDtoFromJson(Map<String, dynamic> json) {
  return _PillCheckItemDto.fromJson(json);
}

/// @nodoc
class _$PillCheckItemDtoTearOff {
  const _$PillCheckItemDtoTearOff();

  _PillCheckItemDto call(
      {required String id, required DateTime dateTime, required bool check}) {
    return _PillCheckItemDto(
      id: id,
      dateTime: dateTime,
      check: check,
    );
  }

  PillCheckItemDto fromJson(Map<String, Object?> json) {
    return PillCheckItemDto.fromJson(json);
  }
}

/// @nodoc
const $PillCheckItemDto = _$PillCheckItemDtoTearOff();

/// @nodoc
mixin _$PillCheckItemDto {
  String get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get check => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PillCheckItemDtoCopyWith<PillCheckItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillCheckItemDtoCopyWith<$Res> {
  factory $PillCheckItemDtoCopyWith(
          PillCheckItemDto value, $Res Function(PillCheckItemDto) then) =
      _$PillCheckItemDtoCopyWithImpl<$Res>;
  $Res call({String id, DateTime dateTime, bool check});
}

/// @nodoc
class _$PillCheckItemDtoCopyWithImpl<$Res>
    implements $PillCheckItemDtoCopyWith<$Res> {
  _$PillCheckItemDtoCopyWithImpl(this._value, this._then);

  final PillCheckItemDto _value;
  // ignore: unused_field
  final $Res Function(PillCheckItemDto) _then;

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
              as String,
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
abstract class _$PillCheckItemDtoCopyWith<$Res>
    implements $PillCheckItemDtoCopyWith<$Res> {
  factory _$PillCheckItemDtoCopyWith(
          _PillCheckItemDto value, $Res Function(_PillCheckItemDto) then) =
      __$PillCheckItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime dateTime, bool check});
}

/// @nodoc
class __$PillCheckItemDtoCopyWithImpl<$Res>
    extends _$PillCheckItemDtoCopyWithImpl<$Res>
    implements _$PillCheckItemDtoCopyWith<$Res> {
  __$PillCheckItemDtoCopyWithImpl(
      _PillCheckItemDto _value, $Res Function(_PillCheckItemDto) _then)
      : super(_value, (v) => _then(v as _PillCheckItemDto));

  @override
  _PillCheckItemDto get _value => super._value as _PillCheckItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = freezed,
    Object? check = freezed,
  }) {
    return _then(_PillCheckItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_PillCheckItemDto extends _PillCheckItemDto {
  const _$_PillCheckItemDto(
      {required this.id, required this.dateTime, required this.check})
      : super._();

  factory _$_PillCheckItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_PillCheckItemDtoFromJson(json);

  @override
  final String id;
  @override
  final DateTime dateTime;
  @override
  final bool check;

  @override
  String toString() {
    return 'PillCheckItemDto(id: $id, dateTime: $dateTime, check: $check)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PillCheckItemDto &&
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
  _$PillCheckItemDtoCopyWith<_PillCheckItemDto> get copyWith =>
      __$PillCheckItemDtoCopyWithImpl<_PillCheckItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PillCheckItemDtoToJson(this);
  }
}

abstract class _PillCheckItemDto extends PillCheckItemDto {
  const factory _PillCheckItemDto(
      {required String id,
      required DateTime dateTime,
      required bool check}) = _$_PillCheckItemDto;
  const _PillCheckItemDto._() : super._();

  factory _PillCheckItemDto.fromJson(Map<String, dynamic> json) =
      _$_PillCheckItemDto.fromJson;

  @override
  String get id;
  @override
  DateTime get dateTime;
  @override
  bool get check;
  @override
  @JsonKey(ignore: true)
  _$PillCheckItemDtoCopyWith<_PillCheckItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
