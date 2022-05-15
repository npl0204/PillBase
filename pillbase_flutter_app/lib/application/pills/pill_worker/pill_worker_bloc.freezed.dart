// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pill_worker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PillWorkerEventTearOff {
  const _$PillWorkerEventTearOff();

  _Initialized initialized(Pill pill) {
    return _Initialized(
      pill,
    );
  }

  _CreatedUpdated createdUpdated(
      {required String pillId,
      required String dateTime,
      required bool check,
      required String checkId}) {
    return _CreatedUpdated(
      pillId: pillId,
      dateTime: dateTime,
      check: check,
      checkId: checkId,
    );
  }

  _Changed changed(List<PillCheckItem> pillCheckItemsList) {
    return _Changed(
      pillCheckItemsList,
    );
  }
}

/// @nodoc
const $PillWorkerEvent = _$PillWorkerEventTearOff();

/// @nodoc
mixin _$PillWorkerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pill pill) initialized,
    required TResult Function(
            String pillId, String dateTime, bool check, String checkId)
        createdUpdated,
    required TResult Function(List<PillCheckItem> pillCheckItemsList) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CreatedUpdated value) createdUpdated,
    required TResult Function(_Changed value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillWorkerEventCopyWith<$Res> {
  factory $PillWorkerEventCopyWith(
          PillWorkerEvent value, $Res Function(PillWorkerEvent) then) =
      _$PillWorkerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PillWorkerEventCopyWithImpl<$Res>
    implements $PillWorkerEventCopyWith<$Res> {
  _$PillWorkerEventCopyWithImpl(this._value, this._then);

  final PillWorkerEvent _value;
  // ignore: unused_field
  final $Res Function(PillWorkerEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Pill pill});

  $PillCopyWith<$Res> get pill;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$PillWorkerEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? pill = freezed,
  }) {
    return _then(_Initialized(
      pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Pill,
    ));
  }

  @override
  $PillCopyWith<$Res> get pill {
    return $PillCopyWith<$Res>(_value.pill, (value) {
      return _then(_value.copyWith(pill: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.pill);

  @override
  final Pill pill;

  @override
  String toString() {
    return 'PillWorkerEvent.initialized(pill: $pill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.pill, pill));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pill));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pill pill) initialized,
    required TResult Function(
            String pillId, String dateTime, bool check, String checkId)
        createdUpdated,
    required TResult Function(List<PillCheckItem> pillCheckItemsList) changed,
  }) {
    return initialized(pill);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
  }) {
    return initialized?.call(pill);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(pill);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CreatedUpdated value) createdUpdated,
    required TResult Function(_Changed value) changed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PillWorkerEvent {
  const factory _Initialized(Pill pill) = _$_Initialized;

  Pill get pill;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedUpdatedCopyWith<$Res> {
  factory _$CreatedUpdatedCopyWith(
          _CreatedUpdated value, $Res Function(_CreatedUpdated) then) =
      __$CreatedUpdatedCopyWithImpl<$Res>;
  $Res call({String pillId, String dateTime, bool check, String checkId});
}

/// @nodoc
class __$CreatedUpdatedCopyWithImpl<$Res>
    extends _$PillWorkerEventCopyWithImpl<$Res>
    implements _$CreatedUpdatedCopyWith<$Res> {
  __$CreatedUpdatedCopyWithImpl(
      _CreatedUpdated _value, $Res Function(_CreatedUpdated) _then)
      : super(_value, (v) => _then(v as _CreatedUpdated));

  @override
  _CreatedUpdated get _value => super._value as _CreatedUpdated;

  @override
  $Res call({
    Object? pillId = freezed,
    Object? dateTime = freezed,
    Object? check = freezed,
    Object? checkId = freezed,
  }) {
    return _then(_CreatedUpdated(
      pillId: pillId == freezed
          ? _value.pillId
          : pillId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      check: check == freezed
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      checkId: checkId == freezed
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreatedUpdated implements _CreatedUpdated {
  const _$_CreatedUpdated(
      {required this.pillId,
      required this.dateTime,
      required this.check,
      required this.checkId});

  @override
  final String pillId;
  @override
  final String dateTime;
  @override
  final bool check;
  @override
  final String checkId;

  @override
  String toString() {
    return 'PillWorkerEvent.createdUpdated(pillId: $pillId, dateTime: $dateTime, check: $check, checkId: $checkId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatedUpdated &&
            const DeepCollectionEquality().equals(other.pillId, pillId) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.check, check) &&
            const DeepCollectionEquality().equals(other.checkId, checkId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pillId),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(check),
      const DeepCollectionEquality().hash(checkId));

  @JsonKey(ignore: true)
  @override
  _$CreatedUpdatedCopyWith<_CreatedUpdated> get copyWith =>
      __$CreatedUpdatedCopyWithImpl<_CreatedUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pill pill) initialized,
    required TResult Function(
            String pillId, String dateTime, bool check, String checkId)
        createdUpdated,
    required TResult Function(List<PillCheckItem> pillCheckItemsList) changed,
  }) {
    return createdUpdated(pillId, dateTime, check, checkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
  }) {
    return createdUpdated?.call(pillId, dateTime, check, checkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
    required TResult orElse(),
  }) {
    if (createdUpdated != null) {
      return createdUpdated(pillId, dateTime, check, checkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CreatedUpdated value) createdUpdated,
    required TResult Function(_Changed value) changed,
  }) {
    return createdUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
  }) {
    return createdUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (createdUpdated != null) {
      return createdUpdated(this);
    }
    return orElse();
  }
}

abstract class _CreatedUpdated implements PillWorkerEvent {
  const factory _CreatedUpdated(
      {required String pillId,
      required String dateTime,
      required bool check,
      required String checkId}) = _$_CreatedUpdated;

  String get pillId;
  String get dateTime;
  bool get check;
  String get checkId;
  @JsonKey(ignore: true)
  _$CreatedUpdatedCopyWith<_CreatedUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) then) =
      __$ChangedCopyWithImpl<$Res>;
  $Res call({List<PillCheckItem> pillCheckItemsList});
}

/// @nodoc
class __$ChangedCopyWithImpl<$Res> extends _$PillWorkerEventCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(_Changed _value, $Res Function(_Changed) _then)
      : super(_value, (v) => _then(v as _Changed));

  @override
  _Changed get _value => super._value as _Changed;

  @override
  $Res call({
    Object? pillCheckItemsList = freezed,
  }) {
    return _then(_Changed(
      pillCheckItemsList == freezed
          ? _value.pillCheckItemsList
          : pillCheckItemsList // ignore: cast_nullable_to_non_nullable
              as List<PillCheckItem>,
    ));
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed(this.pillCheckItemsList);

  @override
  final List<PillCheckItem> pillCheckItemsList;

  @override
  String toString() {
    return 'PillWorkerEvent.changed(pillCheckItemsList: $pillCheckItemsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Changed &&
            const DeepCollectionEquality()
                .equals(other.pillCheckItemsList, pillCheckItemsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pillCheckItemsList));

  @JsonKey(ignore: true)
  @override
  _$ChangedCopyWith<_Changed> get copyWith =>
      __$ChangedCopyWithImpl<_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pill pill) initialized,
    required TResult Function(
            String pillId, String dateTime, bool check, String checkId)
        createdUpdated,
    required TResult Function(List<PillCheckItem> pillCheckItemsList) changed,
  }) {
    return changed(pillCheckItemsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
  }) {
    return changed?.call(pillCheckItemsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pill pill)? initialized,
    TResult Function(
            String pillId, String dateTime, bool check, String checkId)?
        createdUpdated,
    TResult Function(List<PillCheckItem> pillCheckItemsList)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(pillCheckItemsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CreatedUpdated value) createdUpdated,
    required TResult Function(_Changed value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CreatedUpdated value)? createdUpdated,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements PillWorkerEvent {
  const factory _Changed(List<PillCheckItem> pillCheckItemsList) = _$_Changed;

  List<PillCheckItem> get pillCheckItemsList;
  @JsonKey(ignore: true)
  _$ChangedCopyWith<_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PillWorkerStateTearOff {
  const _$PillWorkerStateTearOff();

  _PillWorkerState call(
      {Pill? pill,
      required bool isSaving,
      required Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
      required bool showErrorMessage}) {
    return _PillWorkerState(
      pill: pill,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      showErrorMessage: showErrorMessage,
    );
  }
}

/// @nodoc
const $PillWorkerState = _$PillWorkerStateTearOff();

/// @nodoc
mixin _$PillWorkerState {
  Pill? get pill => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PillFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PillWorkerStateCopyWith<PillWorkerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillWorkerStateCopyWith<$Res> {
  factory $PillWorkerStateCopyWith(
          PillWorkerState value, $Res Function(PillWorkerState) then) =
      _$PillWorkerStateCopyWithImpl<$Res>;
  $Res call(
      {Pill? pill,
      bool isSaving,
      Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessage});

  $PillCopyWith<$Res>? get pill;
}

/// @nodoc
class _$PillWorkerStateCopyWithImpl<$Res>
    implements $PillWorkerStateCopyWith<$Res> {
  _$PillWorkerStateCopyWithImpl(this._value, this._then);

  final PillWorkerState _value;
  // ignore: unused_field
  final $Res Function(PillWorkerState) _then;

  @override
  $Res call({
    Object? pill = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? showErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      pill: pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Pill?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PillFailure, Unit>>,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PillCopyWith<$Res>? get pill {
    if (_value.pill == null) {
      return null;
    }

    return $PillCopyWith<$Res>(_value.pill!, (value) {
      return _then(_value.copyWith(pill: value));
    });
  }
}

/// @nodoc
abstract class _$PillWorkerStateCopyWith<$Res>
    implements $PillWorkerStateCopyWith<$Res> {
  factory _$PillWorkerStateCopyWith(
          _PillWorkerState value, $Res Function(_PillWorkerState) then) =
      __$PillWorkerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Pill? pill,
      bool isSaving,
      Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessage});

  @override
  $PillCopyWith<$Res>? get pill;
}

/// @nodoc
class __$PillWorkerStateCopyWithImpl<$Res>
    extends _$PillWorkerStateCopyWithImpl<$Res>
    implements _$PillWorkerStateCopyWith<$Res> {
  __$PillWorkerStateCopyWithImpl(
      _PillWorkerState _value, $Res Function(_PillWorkerState) _then)
      : super(_value, (v) => _then(v as _PillWorkerState));

  @override
  _PillWorkerState get _value => super._value as _PillWorkerState;

  @override
  $Res call({
    Object? pill = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? showErrorMessage = freezed,
  }) {
    return _then(_PillWorkerState(
      pill: pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Pill?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PillFailure, Unit>>,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PillWorkerState implements _PillWorkerState {
  const _$_PillWorkerState(
      {this.pill,
      required this.isSaving,
      required this.saveFailureOrSuccessOption,
      required this.showErrorMessage});

  @override
  final Pill? pill;
  @override
  final bool isSaving;
  @override
  final Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool showErrorMessage;

  @override
  String toString() {
    return 'PillWorkerState(pill: $pill, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, showErrorMessage: $showErrorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PillWorkerState &&
            const DeepCollectionEquality().equals(other.pill, pill) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pill),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption),
      const DeepCollectionEquality().hash(showErrorMessage));

  @JsonKey(ignore: true)
  @override
  _$PillWorkerStateCopyWith<_PillWorkerState> get copyWith =>
      __$PillWorkerStateCopyWithImpl<_PillWorkerState>(this, _$identity);
}

abstract class _PillWorkerState implements PillWorkerState {
  const factory _PillWorkerState(
      {Pill? pill,
      required bool isSaving,
      required Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
      required bool showErrorMessage}) = _$_PillWorkerState;

  @override
  Pill? get pill;
  @override
  bool get isSaving;
  @override
  Option<Either<PillFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get showErrorMessage;
  @override
  @JsonKey(ignore: true)
  _$PillWorkerStateCopyWith<_PillWorkerState> get copyWith =>
      throw _privateConstructorUsedError;
}
