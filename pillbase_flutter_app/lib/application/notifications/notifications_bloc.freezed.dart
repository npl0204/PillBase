// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

  _NotificationPermissionCheckRequested notificationPermissionCheckRequested() {
    return const _NotificationPermissionCheckRequested();
  }
}

/// @nodoc
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationPermissionCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notificationPermissionCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationPermissionCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationPermissionCheckRequested value)
        notificationPermissionCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationPermissionCheckRequested value)?
        notificationPermissionCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationPermissionCheckRequested value)?
        notificationPermissionCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class _$NotificationPermissionCheckRequestedCopyWith<$Res> {
  factory _$NotificationPermissionCheckRequestedCopyWith(
          _NotificationPermissionCheckRequested value,
          $Res Function(_NotificationPermissionCheckRequested) then) =
      __$NotificationPermissionCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotificationPermissionCheckRequestedCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$NotificationPermissionCheckRequestedCopyWith<$Res> {
  __$NotificationPermissionCheckRequestedCopyWithImpl(
      _NotificationPermissionCheckRequested _value,
      $Res Function(_NotificationPermissionCheckRequested) _then)
      : super(_value, (v) => _then(v as _NotificationPermissionCheckRequested));

  @override
  _NotificationPermissionCheckRequested get _value =>
      super._value as _NotificationPermissionCheckRequested;
}

/// @nodoc

class _$_NotificationPermissionCheckRequested
    implements _NotificationPermissionCheckRequested {
  const _$_NotificationPermissionCheckRequested();

  @override
  String toString() {
    return 'NotificationsEvent.notificationPermissionCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationPermissionCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationPermissionCheckRequested,
  }) {
    return notificationPermissionCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notificationPermissionCheckRequested,
  }) {
    return notificationPermissionCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationPermissionCheckRequested,
    required TResult orElse(),
  }) {
    if (notificationPermissionCheckRequested != null) {
      return notificationPermissionCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationPermissionCheckRequested value)
        notificationPermissionCheckRequested,
  }) {
    return notificationPermissionCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotificationPermissionCheckRequested value)?
        notificationPermissionCheckRequested,
  }) {
    return notificationPermissionCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationPermissionCheckRequested value)?
        notificationPermissionCheckRequested,
    required TResult orElse(),
  }) {
    if (notificationPermissionCheckRequested != null) {
      return notificationPermissionCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _NotificationPermissionCheckRequested
    implements NotificationsEvent {
  const factory _NotificationPermissionCheckRequested() =
      _$_NotificationPermissionCheckRequested;
}

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _AlertDialogDisplayed alertDialogDisplayed() {
    return const _AlertDialogDisplayed();
  }

  _AlertDialogNotDisplayed alertDialogNotDisplayed() {
    return const _AlertDialogNotDisplayed();
  }
}

/// @nodoc
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alertDialogDisplayed,
    required TResult Function() alertDialogNotDisplayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlertDialogDisplayed value) alertDialogDisplayed,
    required TResult Function(_AlertDialogNotDisplayed value)
        alertDialogNotDisplayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alertDialogDisplayed,
    required TResult Function() alertDialogNotDisplayed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlertDialogDisplayed value) alertDialogDisplayed,
    required TResult Function(_AlertDialogNotDisplayed value)
        alertDialogNotDisplayed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AlertDialogDisplayedCopyWith<$Res> {
  factory _$AlertDialogDisplayedCopyWith(_AlertDialogDisplayed value,
          $Res Function(_AlertDialogDisplayed) then) =
      __$AlertDialogDisplayedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AlertDialogDisplayedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$AlertDialogDisplayedCopyWith<$Res> {
  __$AlertDialogDisplayedCopyWithImpl(
      _AlertDialogDisplayed _value, $Res Function(_AlertDialogDisplayed) _then)
      : super(_value, (v) => _then(v as _AlertDialogDisplayed));

  @override
  _AlertDialogDisplayed get _value => super._value as _AlertDialogDisplayed;
}

/// @nodoc

class _$_AlertDialogDisplayed implements _AlertDialogDisplayed {
  const _$_AlertDialogDisplayed();

  @override
  String toString() {
    return 'NotificationsState.alertDialogDisplayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AlertDialogDisplayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alertDialogDisplayed,
    required TResult Function() alertDialogNotDisplayed,
  }) {
    return alertDialogDisplayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
  }) {
    return alertDialogDisplayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
    required TResult orElse(),
  }) {
    if (alertDialogDisplayed != null) {
      return alertDialogDisplayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlertDialogDisplayed value) alertDialogDisplayed,
    required TResult Function(_AlertDialogNotDisplayed value)
        alertDialogNotDisplayed,
  }) {
    return alertDialogDisplayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
  }) {
    return alertDialogDisplayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
    required TResult orElse(),
  }) {
    if (alertDialogDisplayed != null) {
      return alertDialogDisplayed(this);
    }
    return orElse();
  }
}

abstract class _AlertDialogDisplayed implements NotificationsState {
  const factory _AlertDialogDisplayed() = _$_AlertDialogDisplayed;
}

/// @nodoc
abstract class _$AlertDialogNotDisplayedCopyWith<$Res> {
  factory _$AlertDialogNotDisplayedCopyWith(_AlertDialogNotDisplayed value,
          $Res Function(_AlertDialogNotDisplayed) then) =
      __$AlertDialogNotDisplayedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AlertDialogNotDisplayedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$AlertDialogNotDisplayedCopyWith<$Res> {
  __$AlertDialogNotDisplayedCopyWithImpl(_AlertDialogNotDisplayed _value,
      $Res Function(_AlertDialogNotDisplayed) _then)
      : super(_value, (v) => _then(v as _AlertDialogNotDisplayed));

  @override
  _AlertDialogNotDisplayed get _value =>
      super._value as _AlertDialogNotDisplayed;
}

/// @nodoc

class _$_AlertDialogNotDisplayed implements _AlertDialogNotDisplayed {
  const _$_AlertDialogNotDisplayed();

  @override
  String toString() {
    return 'NotificationsState.alertDialogNotDisplayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AlertDialogNotDisplayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() alertDialogDisplayed,
    required TResult Function() alertDialogNotDisplayed,
  }) {
    return alertDialogNotDisplayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
  }) {
    return alertDialogNotDisplayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? alertDialogDisplayed,
    TResult Function()? alertDialogNotDisplayed,
    required TResult orElse(),
  }) {
    if (alertDialogNotDisplayed != null) {
      return alertDialogNotDisplayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AlertDialogDisplayed value) alertDialogDisplayed,
    required TResult Function(_AlertDialogNotDisplayed value)
        alertDialogNotDisplayed,
  }) {
    return alertDialogNotDisplayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
  }) {
    return alertDialogNotDisplayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AlertDialogDisplayed value)? alertDialogDisplayed,
    TResult Function(_AlertDialogNotDisplayed value)? alertDialogNotDisplayed,
    required TResult orElse(),
  }) {
    if (alertDialogNotDisplayed != null) {
      return alertDialogNotDisplayed(this);
    }
    return orElse();
  }
}

abstract class _AlertDialogNotDisplayed implements NotificationsState {
  const factory _AlertDialogNotDisplayed() = _$_AlertDialogNotDisplayed;
}
