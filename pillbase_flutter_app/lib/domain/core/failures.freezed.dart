// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  NoName<T> noName<T>() {
    return NoName<T>();
  }

  NoNumber<T> noNumber<T>() {
    return NoNumber<T>();
  }

  NoUnit<T> noUnit<T>() {
    return NoUnit<T>();
  }

  NoDayOfWeek<T> noDayOfWeek<T>() {
    return NoDayOfWeek<T>();
  }

  NoTimeOfDay<T> noTimeOfDay<T>() {
    return NoTimeOfDay<T>();
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoNameCopyWith<T, $Res> {
  factory $NoNameCopyWith(NoName<T> value, $Res Function(NoName<T>) then) =
      _$NoNameCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoNameCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoNameCopyWith<T, $Res> {
  _$NoNameCopyWithImpl(NoName<T> _value, $Res Function(NoName<T>) _then)
      : super(_value, (v) => _then(v as NoName<T>));

  @override
  NoName<T> get _value => super._value as NoName<T>;
}

/// @nodoc

class _$NoName<T> implements NoName<T> {
  const _$NoName();

  @override
  String toString() {
    return 'ValueFailure<$T>.noName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoName<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return noName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return noName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noName != null) {
      return noName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return noName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return noName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noName != null) {
      return noName(this);
    }
    return orElse();
  }
}

abstract class NoName<T> implements ValueFailure<T> {
  const factory NoName() = _$NoName<T>;
}

/// @nodoc
abstract class $NoNumberCopyWith<T, $Res> {
  factory $NoNumberCopyWith(
          NoNumber<T> value, $Res Function(NoNumber<T>) then) =
      _$NoNumberCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoNumberCopyWith<T, $Res> {
  _$NoNumberCopyWithImpl(NoNumber<T> _value, $Res Function(NoNumber<T>) _then)
      : super(_value, (v) => _then(v as NoNumber<T>));

  @override
  NoNumber<T> get _value => super._value as NoNumber<T>;
}

/// @nodoc

class _$NoNumber<T> implements NoNumber<T> {
  const _$NoNumber();

  @override
  String toString() {
    return 'ValueFailure<$T>.noNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoNumber<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return noNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return noNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noNumber != null) {
      return noNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return noNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return noNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noNumber != null) {
      return noNumber(this);
    }
    return orElse();
  }
}

abstract class NoNumber<T> implements ValueFailure<T> {
  const factory NoNumber() = _$NoNumber<T>;
}

/// @nodoc
abstract class $NoUnitCopyWith<T, $Res> {
  factory $NoUnitCopyWith(NoUnit<T> value, $Res Function(NoUnit<T>) then) =
      _$NoUnitCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoUnitCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoUnitCopyWith<T, $Res> {
  _$NoUnitCopyWithImpl(NoUnit<T> _value, $Res Function(NoUnit<T>) _then)
      : super(_value, (v) => _then(v as NoUnit<T>));

  @override
  NoUnit<T> get _value => super._value as NoUnit<T>;
}

/// @nodoc

class _$NoUnit<T> implements NoUnit<T> {
  const _$NoUnit();

  @override
  String toString() {
    return 'ValueFailure<$T>.noUnit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoUnit<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return noUnit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return noUnit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noUnit != null) {
      return noUnit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return noUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return noUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noUnit != null) {
      return noUnit(this);
    }
    return orElse();
  }
}

abstract class NoUnit<T> implements ValueFailure<T> {
  const factory NoUnit() = _$NoUnit<T>;
}

/// @nodoc
abstract class $NoDayOfWeekCopyWith<T, $Res> {
  factory $NoDayOfWeekCopyWith(
          NoDayOfWeek<T> value, $Res Function(NoDayOfWeek<T>) then) =
      _$NoDayOfWeekCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoDayOfWeekCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoDayOfWeekCopyWith<T, $Res> {
  _$NoDayOfWeekCopyWithImpl(
      NoDayOfWeek<T> _value, $Res Function(NoDayOfWeek<T>) _then)
      : super(_value, (v) => _then(v as NoDayOfWeek<T>));

  @override
  NoDayOfWeek<T> get _value => super._value as NoDayOfWeek<T>;
}

/// @nodoc

class _$NoDayOfWeek<T> implements NoDayOfWeek<T> {
  const _$NoDayOfWeek();

  @override
  String toString() {
    return 'ValueFailure<$T>.noDayOfWeek()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoDayOfWeek<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return noDayOfWeek();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return noDayOfWeek?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noDayOfWeek != null) {
      return noDayOfWeek();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return noDayOfWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return noDayOfWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noDayOfWeek != null) {
      return noDayOfWeek(this);
    }
    return orElse();
  }
}

abstract class NoDayOfWeek<T> implements ValueFailure<T> {
  const factory NoDayOfWeek() = _$NoDayOfWeek<T>;
}

/// @nodoc
abstract class $NoTimeOfDayCopyWith<T, $Res> {
  factory $NoTimeOfDayCopyWith(
          NoTimeOfDay<T> value, $Res Function(NoTimeOfDay<T>) then) =
      _$NoTimeOfDayCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoTimeOfDayCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoTimeOfDayCopyWith<T, $Res> {
  _$NoTimeOfDayCopyWithImpl(
      NoTimeOfDay<T> _value, $Res Function(NoTimeOfDay<T>) _then)
      : super(_value, (v) => _then(v as NoTimeOfDay<T>));

  @override
  NoTimeOfDay<T> get _value => super._value as NoTimeOfDay<T>;
}

/// @nodoc

class _$NoTimeOfDay<T> implements NoTimeOfDay<T> {
  const _$NoTimeOfDay();

  @override
  String toString() {
    return 'ValueFailure<$T>.noTimeOfDay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoTimeOfDay<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function() noName,
    required TResult Function() noNumber,
    required TResult Function() noUnit,
    required TResult Function() noDayOfWeek,
    required TResult Function() noTimeOfDay,
  }) {
    return noTimeOfDay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
  }) {
    return noTimeOfDay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function()? noName,
    TResult Function()? noNumber,
    TResult Function()? noUnit,
    TResult Function()? noDayOfWeek,
    TResult Function()? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noTimeOfDay != null) {
      return noTimeOfDay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NoName<T> value) noName,
    required TResult Function(NoNumber<T> value) noNumber,
    required TResult Function(NoUnit<T> value) noUnit,
    required TResult Function(NoDayOfWeek<T> value) noDayOfWeek,
    required TResult Function(NoTimeOfDay<T> value) noTimeOfDay,
  }) {
    return noTimeOfDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
  }) {
    return noTimeOfDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NoName<T> value)? noName,
    TResult Function(NoNumber<T> value)? noNumber,
    TResult Function(NoUnit<T> value)? noUnit,
    TResult Function(NoDayOfWeek<T> value)? noDayOfWeek,
    TResult Function(NoTimeOfDay<T> value)? noTimeOfDay,
    required TResult orElse(),
  }) {
    if (noTimeOfDay != null) {
      return noTimeOfDay(this);
    }
    return orElse();
  }
}

abstract class NoTimeOfDay<T> implements ValueFailure<T> {
  const factory NoTimeOfDay() = _$NoTimeOfDay<T>;
}
