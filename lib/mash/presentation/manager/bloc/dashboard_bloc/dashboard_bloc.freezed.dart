// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWordAndThoughtOftheDayEventImplCopyWith<$Res> {
  factory _$$FetchWordAndThoughtOftheDayEventImplCopyWith(
          _$FetchWordAndThoughtOftheDayEventImpl value,
          $Res Function(_$FetchWordAndThoughtOftheDayEventImpl) then) =
      __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res,
        _$FetchWordAndThoughtOftheDayEventImpl>
    implements _$$FetchWordAndThoughtOftheDayEventImplCopyWith<$Res> {
  __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl(
      _$FetchWordAndThoughtOftheDayEventImpl _value,
      $Res Function(_$FetchWordAndThoughtOftheDayEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchWordAndThoughtOftheDayEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchWordAndThoughtOftheDayEventImpl
    implements _FetchWordAndThoughtOftheDayEvent {
  const _$FetchWordAndThoughtOftheDayEventImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DashboardEvent.fetchWordAndThoughtOftheDayEvent(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWordAndThoughtOftheDayEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWordAndThoughtOftheDayEventImplCopyWith<
          _$FetchWordAndThoughtOftheDayEventImpl>
      get copyWith => __$$FetchWordAndThoughtOftheDayEventImplCopyWithImpl<
          _$FetchWordAndThoughtOftheDayEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    required TResult orElse(),
  }) {
    if (fetchWordAndThoughtOftheDayEvent != null) {
      return fetchWordAndThoughtOftheDayEvent(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
  }) {
    return fetchWordAndThoughtOftheDayEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    required TResult orElse(),
  }) {
    if (fetchWordAndThoughtOftheDayEvent != null) {
      return fetchWordAndThoughtOftheDayEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchWordAndThoughtOftheDayEvent implements DashboardEvent {
  const factory _FetchWordAndThoughtOftheDayEvent(final BuildContext context) =
      _$FetchWordAndThoughtOftheDayEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchWordAndThoughtOftheDayEventImplCopyWith<
          _$FetchWordAndThoughtOftheDayEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTermDetailsEventImplCopyWith<$Res> {
  factory _$$GetTermDetailsEventImplCopyWith(_$GetTermDetailsEventImpl value,
          $Res Function(_$GetTermDetailsEventImpl) then) =
      __$$GetTermDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTermDetailsEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetTermDetailsEventImpl>
    implements _$$GetTermDetailsEventImplCopyWith<$Res> {
  __$$GetTermDetailsEventImplCopyWithImpl(_$GetTermDetailsEventImpl _value,
      $Res Function(_$GetTermDetailsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTermDetailsEventImpl implements _GetTermDetailsEvent {
  const _$GetTermDetailsEventImpl();

  @override
  String toString() {
    return 'DashboardEvent.getTermDetailsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTermDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function() getTermDetailsEvent,
  }) {
    return getTermDetailsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function()? getTermDetailsEvent,
  }) {
    return getTermDetailsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function()? getTermDetailsEvent,
    required TResult orElse(),
  }) {
    if (getTermDetailsEvent != null) {
      return getTermDetailsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetTermDetailsEvent value) getTermDetailsEvent,
  }) {
    return getTermDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
  }) {
    return getTermDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetTermDetailsEvent value)? getTermDetailsEvent,
    required TResult orElse(),
  }) {
    if (getTermDetailsEvent != null) {
      return getTermDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class _GetTermDetailsEvent implements DashboardEvent {
  const factory _GetTermDetailsEvent() = _$GetTermDetailsEventImpl;
}

/// @nodoc
mixin _$DashboardState {
  ResponseClassify<WordThoughtsEntity>? get wordThoughtResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<DigitalLibraryEntity>>? get getDigitalLibrary =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
      ResponseClassify<List<DigitalLibraryEntity>>? getDigitalLibrary});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordThoughtResponse = freezed,
    Object? getDigitalLibrary = freezed,
  }) {
    return _then(_value.copyWith(
      wordThoughtResponse: freezed == wordThoughtResponse
          ? _value.wordThoughtResponse
          : wordThoughtResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<WordThoughtsEntity>?,
      getDigitalLibrary: freezed == getDigitalLibrary
          ? _value.getDigitalLibrary
          : getDigitalLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DigitalLibraryEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
      ResponseClassify<List<DigitalLibraryEntity>>? getDigitalLibrary});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordThoughtResponse = freezed,
    Object? getDigitalLibrary = freezed,
  }) {
    return _then(_$DashboardStateImpl(
      wordThoughtResponse: freezed == wordThoughtResponse
          ? _value.wordThoughtResponse
          : wordThoughtResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<WordThoughtsEntity>?,
      getDigitalLibrary: freezed == getDigitalLibrary
          ? _value.getDigitalLibrary
          : getDigitalLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DigitalLibraryEntity>>?,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required this.wordThoughtResponse, this.getDigitalLibrary});

  @override
  final ResponseClassify<WordThoughtsEntity>? wordThoughtResponse;
  @override
  final ResponseClassify<List<DigitalLibraryEntity>>? getDigitalLibrary;

  @override
  String toString() {
    return 'DashboardState(wordThoughtResponse: $wordThoughtResponse, getDigitalLibrary: $getDigitalLibrary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.wordThoughtResponse, wordThoughtResponse) ||
                other.wordThoughtResponse == wordThoughtResponse) &&
            (identical(other.getDigitalLibrary, getDigitalLibrary) ||
                other.getDigitalLibrary == getDigitalLibrary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, wordThoughtResponse, getDigitalLibrary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
      final ResponseClassify<List<DigitalLibraryEntity>>?
          getDigitalLibrary}) = _$DashboardStateImpl;

  @override
  ResponseClassify<WordThoughtsEntity>? get wordThoughtResponse;
  @override
  ResponseClassify<List<DigitalLibraryEntity>>? get getDigitalLibrary;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
