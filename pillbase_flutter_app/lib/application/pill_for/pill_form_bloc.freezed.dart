// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pill_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PillFormEventTearOff {
  const _$PillFormEventTearOff();

  _PillNameChanged pillNameChanged(String pillName) {
    return _PillNameChanged(
      pillName,
    );
  }

  _Initialized initialized(Option<Pill> initialPillOption) {
    return _Initialized(
      initialPillOption,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $PillFormEvent = _$PillFormEventTearOff();

/// @nodoc
mixin _$PillFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pillName) pillNameChanged,
    required TResult Function(Option<Pill> initialPillOption) initialized,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PillNameChanged value) pillNameChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillFormEventCopyWith<$Res> {
  factory $PillFormEventCopyWith(
          PillFormEvent value, $Res Function(PillFormEvent) then) =
      _$PillFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PillFormEventCopyWithImpl<$Res>
    implements $PillFormEventCopyWith<$Res> {
  _$PillFormEventCopyWithImpl(this._value, this._then);

  final PillFormEvent _value;
  // ignore: unused_field
  final $Res Function(PillFormEvent) _then;
}

/// @nodoc
abstract class _$PillNameChangedCopyWith<$Res> {
  factory _$PillNameChangedCopyWith(
          _PillNameChanged value, $Res Function(_PillNameChanged) then) =
      __$PillNameChangedCopyWithImpl<$Res>;
  $Res call({String pillName});
}

/// @nodoc
class __$PillNameChangedCopyWithImpl<$Res>
    extends _$PillFormEventCopyWithImpl<$Res>
    implements _$PillNameChangedCopyWith<$Res> {
  __$PillNameChangedCopyWithImpl(
      _PillNameChanged _value, $Res Function(_PillNameChanged) _then)
      : super(_value, (v) => _then(v as _PillNameChanged));

  @override
  _PillNameChanged get _value => super._value as _PillNameChanged;

  @override
  $Res call({
    Object? pillName = freezed,
  }) {
    return _then(_PillNameChanged(
      pillName == freezed
          ? _value.pillName
          : pillName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PillNameChanged implements _PillNameChanged {
  const _$_PillNameChanged(this.pillName);

  @override
  final String pillName;

  @override
  String toString() {
    return 'PillFormEvent.pillNameChanged(pillName: $pillName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PillNameChanged &&
            const DeepCollectionEquality().equals(other.pillName, pillName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pillName));

  @JsonKey(ignore: true)
  @override
  _$PillNameChangedCopyWith<_PillNameChanged> get copyWith =>
      __$PillNameChangedCopyWithImpl<_PillNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pillName) pillNameChanged,
    required TResult Function(Option<Pill> initialPillOption) initialized,
    required TResult Function() saved,
  }) {
    return pillNameChanged(pillName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
  }) {
    return pillNameChanged?.call(pillName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (pillNameChanged != null) {
      return pillNameChanged(pillName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PillNameChanged value) pillNameChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Saved value) saved,
  }) {
    return pillNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
  }) {
    return pillNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (pillNameChanged != null) {
      return pillNameChanged(this);
    }
    return orElse();
  }
}

abstract class _PillNameChanged implements PillFormEvent {
  const factory _PillNameChanged(String pillName) = _$_PillNameChanged;

  String get pillName;
  @JsonKey(ignore: true)
  _$PillNameChangedCopyWith<_PillNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Pill> initialPillOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$PillFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialPillOption = freezed,
  }) {
    return _then(_Initialized(
      initialPillOption == freezed
          ? _value.initialPillOption
          : initialPillOption // ignore: cast_nullable_to_non_nullable
              as Option<Pill>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPillOption);

  @override
  final Option<Pill> initialPillOption;

  @override
  String toString() {
    return 'PillFormEvent.initialized(initialPillOption: $initialPillOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialPillOption, initialPillOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialPillOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pillName) pillNameChanged,
    required TResult Function(Option<Pill> initialPillOption) initialized,
    required TResult Function() saved,
  }) {
    return initialized(initialPillOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialPillOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialPillOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PillNameChanged value) pillNameChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PillFormEvent {
  const factory _Initialized(Option<Pill> initialPillOption) = _$_Initialized;

  Option<Pill> get initialPillOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$PillFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PillFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pillName) pillNameChanged,
    required TResult Function(Option<Pill> initialPillOption) initialized,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pillName)? pillNameChanged,
    TResult Function(Option<Pill> initialPillOption)? initialized,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PillNameChanged value) pillNameChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PillNameChanged value)? pillNameChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PillFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$PillFormStateTearOff {
  const _$PillFormStateTearOff();

  _PillFormState call(
      {required Pill pill,
      required bool isSaving,
      required bool showErrorMessage,
      required bool isEditing,
      required Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption}) {
    return _PillFormState(
      pill: pill,
      isSaving: isSaving,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PillFormState = _$PillFormStateTearOff();

/// @nodoc
mixin _$PillFormState {
  Pill get pill => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<PillFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PillFormStateCopyWith<PillFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillFormStateCopyWith<$Res> {
  factory $PillFormStateCopyWith(
          PillFormState value, $Res Function(PillFormState) then) =
      _$PillFormStateCopyWithImpl<$Res>;
  $Res call(
      {Pill pill,
      bool isSaving,
      bool showErrorMessage,
      bool isEditing,
      Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption});

  $PillCopyWith<$Res> get pill;
}

/// @nodoc
class _$PillFormStateCopyWithImpl<$Res>
    implements $PillFormStateCopyWith<$Res> {
  _$PillFormStateCopyWithImpl(this._value, this._then);

  final PillFormState _value;
  // ignore: unused_field
  final $Res Function(PillFormState) _then;

  @override
  $Res call({
    Object? pill = freezed,
    Object? isSaving = freezed,
    Object? showErrorMessage = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      pill: pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Pill,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PillFailure, Unit>>,
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
abstract class _$PillFormStateCopyWith<$Res>
    implements $PillFormStateCopyWith<$Res> {
  factory _$PillFormStateCopyWith(
          _PillFormState value, $Res Function(_PillFormState) then) =
      __$PillFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Pill pill,
      bool isSaving,
      bool showErrorMessage,
      bool isEditing,
      Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $PillCopyWith<$Res> get pill;
}

/// @nodoc
class __$PillFormStateCopyWithImpl<$Res>
    extends _$PillFormStateCopyWithImpl<$Res>
    implements _$PillFormStateCopyWith<$Res> {
  __$PillFormStateCopyWithImpl(
      _PillFormState _value, $Res Function(_PillFormState) _then)
      : super(_value, (v) => _then(v as _PillFormState));

  @override
  _PillFormState get _value => super._value as _PillFormState;

  @override
  $Res call({
    Object? pill = freezed,
    Object? isSaving = freezed,
    Object? showErrorMessage = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_PillFormState(
      pill: pill == freezed
          ? _value.pill
          : pill // ignore: cast_nullable_to_non_nullable
              as Pill,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PillFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PillFormState implements _PillFormState {
  const _$_PillFormState(
      {required this.pill,
      required this.isSaving,
      required this.showErrorMessage,
      required this.isEditing,
      required this.saveFailureOrSuccessOption});

  @override
  final Pill pill;
  @override
  final bool isSaving;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PillFormState(pill: $pill, isSaving: $isSaving, showErrorMessage: $showErrorMessage, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PillFormState &&
            const DeepCollectionEquality().equals(other.pill, pill) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pill),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$PillFormStateCopyWith<_PillFormState> get copyWith =>
      __$PillFormStateCopyWithImpl<_PillFormState>(this, _$identity);
}

abstract class _PillFormState implements PillFormState {
  const factory _PillFormState(
      {required Pill pill,
      required bool isSaving,
      required bool showErrorMessage,
      required bool isEditing,
      required Option<Either<PillFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_PillFormState;

  @override
  Pill get pill;
  @override
  bool get isSaving;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  Option<Either<PillFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$PillFormStateCopyWith<_PillFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
