// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntryDto _$EntryDtoFromJson(Map<String, dynamic> json) {
  return _EntryDto.fromJson(json);
}

/// @nodoc
class _$EntryDtoTearOff {
  const _$EntryDtoTearOff();

  _EntryDto call(
      {@JsonKey(ignore: true) String? id,
      required String entryName,
      required String entryClass,
      required String indication,
      required String formulation,
      required String dose,
      required String contraindication,
      required String caution,
      required String sideEffects,
      required String instructions}) {
    return _EntryDto(
      id: id,
      entryName: entryName,
      entryClass: entryClass,
      indication: indication,
      formulation: formulation,
      dose: dose,
      contraindication: contraindication,
      caution: caution,
      sideEffects: sideEffects,
      instructions: instructions,
    );
  }

  EntryDto fromJson(Map<String, Object?> json) {
    return EntryDto.fromJson(json);
  }
}

/// @nodoc
const $EntryDto = _$EntryDtoTearOff();

/// @nodoc
mixin _$EntryDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get entryName => throw _privateConstructorUsedError;
  String get entryClass => throw _privateConstructorUsedError;
  String get indication => throw _privateConstructorUsedError;
  String get formulation => throw _privateConstructorUsedError;
  String get dose => throw _privateConstructorUsedError;
  String get contraindication => throw _privateConstructorUsedError;
  String get caution => throw _privateConstructorUsedError;
  String get sideEffects => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryDtoCopyWith<EntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryDtoCopyWith<$Res> {
  factory $EntryDtoCopyWith(EntryDto value, $Res Function(EntryDto) then) =
      _$EntryDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String entryName,
      String entryClass,
      String indication,
      String formulation,
      String dose,
      String contraindication,
      String caution,
      String sideEffects,
      String instructions});
}

/// @nodoc
class _$EntryDtoCopyWithImpl<$Res> implements $EntryDtoCopyWith<$Res> {
  _$EntryDtoCopyWithImpl(this._value, this._then);

  final EntryDto _value;
  // ignore: unused_field
  final $Res Function(EntryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? entryName = freezed,
    Object? entryClass = freezed,
    Object? indication = freezed,
    Object? formulation = freezed,
    Object? dose = freezed,
    Object? contraindication = freezed,
    Object? caution = freezed,
    Object? sideEffects = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      entryName: entryName == freezed
          ? _value.entryName
          : entryName // ignore: cast_nullable_to_non_nullable
              as String,
      entryClass: entryClass == freezed
          ? _value.entryClass
          : entryClass // ignore: cast_nullable_to_non_nullable
              as String,
      indication: indication == freezed
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as String,
      formulation: formulation == freezed
          ? _value.formulation
          : formulation // ignore: cast_nullable_to_non_nullable
              as String,
      dose: dose == freezed
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String,
      contraindication: contraindication == freezed
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as String,
      caution: caution == freezed
          ? _value.caution
          : caution // ignore: cast_nullable_to_non_nullable
              as String,
      sideEffects: sideEffects == freezed
          ? _value.sideEffects
          : sideEffects // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EntryDtoCopyWith<$Res> implements $EntryDtoCopyWith<$Res> {
  factory _$EntryDtoCopyWith(_EntryDto value, $Res Function(_EntryDto) then) =
      __$EntryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String entryName,
      String entryClass,
      String indication,
      String formulation,
      String dose,
      String contraindication,
      String caution,
      String sideEffects,
      String instructions});
}

/// @nodoc
class __$EntryDtoCopyWithImpl<$Res> extends _$EntryDtoCopyWithImpl<$Res>
    implements _$EntryDtoCopyWith<$Res> {
  __$EntryDtoCopyWithImpl(_EntryDto _value, $Res Function(_EntryDto) _then)
      : super(_value, (v) => _then(v as _EntryDto));

  @override
  _EntryDto get _value => super._value as _EntryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? entryName = freezed,
    Object? entryClass = freezed,
    Object? indication = freezed,
    Object? formulation = freezed,
    Object? dose = freezed,
    Object? contraindication = freezed,
    Object? caution = freezed,
    Object? sideEffects = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_EntryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      entryName: entryName == freezed
          ? _value.entryName
          : entryName // ignore: cast_nullable_to_non_nullable
              as String,
      entryClass: entryClass == freezed
          ? _value.entryClass
          : entryClass // ignore: cast_nullable_to_non_nullable
              as String,
      indication: indication == freezed
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as String,
      formulation: formulation == freezed
          ? _value.formulation
          : formulation // ignore: cast_nullable_to_non_nullable
              as String,
      dose: dose == freezed
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as String,
      contraindication: contraindication == freezed
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as String,
      caution: caution == freezed
          ? _value.caution
          : caution // ignore: cast_nullable_to_non_nullable
              as String,
      sideEffects: sideEffects == freezed
          ? _value.sideEffects
          : sideEffects // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntryDto extends _EntryDto {
  const _$_EntryDto(
      {@JsonKey(ignore: true) this.id,
      required this.entryName,
      required this.entryClass,
      required this.indication,
      required this.formulation,
      required this.dose,
      required this.contraindication,
      required this.caution,
      required this.sideEffects,
      required this.instructions})
      : super._();

  factory _$_EntryDto.fromJson(Map<String, dynamic> json) =>
      _$$_EntryDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String entryName;
  @override
  final String entryClass;
  @override
  final String indication;
  @override
  final String formulation;
  @override
  final String dose;
  @override
  final String contraindication;
  @override
  final String caution;
  @override
  final String sideEffects;
  @override
  final String instructions;

  @override
  String toString() {
    return 'EntryDto(id: $id, entryName: $entryName, entryClass: $entryClass, indication: $indication, formulation: $formulation, dose: $dose, contraindication: $contraindication, caution: $caution, sideEffects: $sideEffects, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntryDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.entryName, entryName) &&
            const DeepCollectionEquality()
                .equals(other.entryClass, entryClass) &&
            const DeepCollectionEquality()
                .equals(other.indication, indication) &&
            const DeepCollectionEquality()
                .equals(other.formulation, formulation) &&
            const DeepCollectionEquality().equals(other.dose, dose) &&
            const DeepCollectionEquality()
                .equals(other.contraindication, contraindication) &&
            const DeepCollectionEquality().equals(other.caution, caution) &&
            const DeepCollectionEquality()
                .equals(other.sideEffects, sideEffects) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(entryName),
      const DeepCollectionEquality().hash(entryClass),
      const DeepCollectionEquality().hash(indication),
      const DeepCollectionEquality().hash(formulation),
      const DeepCollectionEquality().hash(dose),
      const DeepCollectionEquality().hash(contraindication),
      const DeepCollectionEquality().hash(caution),
      const DeepCollectionEquality().hash(sideEffects),
      const DeepCollectionEquality().hash(instructions));

  @JsonKey(ignore: true)
  @override
  _$EntryDtoCopyWith<_EntryDto> get copyWith =>
      __$EntryDtoCopyWithImpl<_EntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryDtoToJson(this);
  }
}

abstract class _EntryDto extends EntryDto {
  const factory _EntryDto(
      {@JsonKey(ignore: true) String? id,
      required String entryName,
      required String entryClass,
      required String indication,
      required String formulation,
      required String dose,
      required String contraindication,
      required String caution,
      required String sideEffects,
      required String instructions}) = _$_EntryDto;
  const _EntryDto._() : super._();

  factory _EntryDto.fromJson(Map<String, dynamic> json) = _$_EntryDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get entryName;
  @override
  String get entryClass;
  @override
  String get indication;
  @override
  String get formulation;
  @override
  String get dose;
  @override
  String get contraindication;
  @override
  String get caution;
  @override
  String get sideEffects;
  @override
  String get instructions;
  @override
  @JsonKey(ignore: true)
  _$EntryDtoCopyWith<_EntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
