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
    required TResult Function(String? search, String? catId, String? subCatId)
        getDigitalLibrary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function(String? search, String? catId, String? subCatId)?
        getDigitalLibrary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function(String? search, String? catId, String? subCatId)?
        getDigitalLibrary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetDigitalLibrary value) getDigitalLibrary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetDigitalLibrary value)? getDigitalLibrary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetDigitalLibrary value)? getDigitalLibrary,
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
    required TResult Function(String? search, String? catId, String? subCatId)
        getDigitalLibrary,
  }) {
    return fetchWordAndThoughtOftheDayEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function(String? search, String? catId, String? subCatId)?
        getDigitalLibrary,
  }) {
    return fetchWordAndThoughtOftheDayEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function(String? search, String? catId, String? subCatId)?
        getDigitalLibrary,
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
    required TResult Function(_GetDigitalLibrary value) getDigitalLibrary,
  }) {
    return fetchWordAndThoughtOftheDayEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetDigitalLibrary value)? getDigitalLibrary,
  }) {
    return fetchWordAndThoughtOftheDayEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetDigitalLibrary value)? getDigitalLibrary,
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
abstract class _$$GetDigitalLibraryImplCopyWith<$Res> {
  factory _$$GetDigitalLibraryImplCopyWith(_$GetDigitalLibraryImpl value,
          $Res Function(_$GetDigitalLibraryImpl) then) =
      __$$GetDigitalLibraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search, String? catId, String? subCatId});
}

/// @nodoc
class __$$GetDigitalLibraryImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetDigitalLibraryImpl>
    implements _$$GetDigitalLibraryImplCopyWith<$Res> {
  __$$GetDigitalLibraryImplCopyWithImpl(_$GetDigitalLibraryImpl _value,
      $Res Function(_$GetDigitalLibraryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? catId = freezed,
    Object? subCatId = freezed,
  }) {
    return _then(_$GetDigitalLibraryImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCatId: freezed == subCatId
          ? _value.subCatId
          : subCatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetDigitalLibraryImpl implements _GetDigitalLibrary {
  const _$GetDigitalLibraryImpl({this.search, this.catId, this.subCatId});

  @override
  final String? search;
  @override
  final String? catId;
  @override
  final String? subCatId;

  @override
  String toString() {
    return 'DashboardEvent.getDigitalLibrary(search: $search, catId: $catId, subCatId: $subCatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDigitalLibraryImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.subCatId, subCatId) ||
                other.subCatId == subCatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search, catId, subCatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDigitalLibraryImplCopyWith<_$GetDigitalLibraryImpl> get copyWith =>
      __$$GetDigitalLibraryImplCopyWithImpl<_$GetDigitalLibraryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(String? search, String? catId, String? subCatId)
        getDigitalLibrary,
  }) {
    return getDigitalLibrary(search, catId, subCatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult? Function(String? search, String? catId, String? subCatId)?
        getDigitalLibrary,
  }) {
    return getDigitalLibrary?.call(search, catId, subCatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchWordAndThoughtOftheDayEvent,
    TResult Function(String? search, String? catId, String? subCatId)?
        getDigitalLibrary,
    required TResult orElse(),
  }) {
    if (getDigitalLibrary != null) {
      return getDigitalLibrary(search, catId, subCatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWordAndThoughtOftheDayEvent value)
        fetchWordAndThoughtOftheDayEvent,
    required TResult Function(_GetDigitalLibrary value) getDigitalLibrary,
  }) {
    return getDigitalLibrary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult? Function(_GetDigitalLibrary value)? getDigitalLibrary,
  }) {
    return getDigitalLibrary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWordAndThoughtOftheDayEvent value)?
        fetchWordAndThoughtOftheDayEvent,
    TResult Function(_GetDigitalLibrary value)? getDigitalLibrary,
    required TResult orElse(),
  }) {
    if (getDigitalLibrary != null) {
      return getDigitalLibrary(this);
    }
    return orElse();
  }
}

abstract class _GetDigitalLibrary implements DashboardEvent {
  const factory _GetDigitalLibrary(
      {final String? search,
      final String? catId,
      final String? subCatId}) = _$GetDigitalLibraryImpl;

  String? get search;
  String? get catId;
  String? get subCatId;
  @JsonKey(ignore: true)
  _$$GetDigitalLibraryImplCopyWith<_$GetDigitalLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  dynamic get wordThoughtResponse => throw _privateConstructorUsedError;
  dynamic get getDigitalLibrary => throw _privateConstructorUsedError;

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
  $Res call({dynamic wordThoughtResponse, dynamic getDigitalLibrary});
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
              as dynamic,
      getDigitalLibrary: freezed == getDigitalLibrary
          ? _value.getDigitalLibrary
          : getDigitalLibrary // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  $Res call({dynamic wordThoughtResponse, dynamic getDigitalLibrary});
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
          ? _value.wordThoughtResponse!
          : wordThoughtResponse,
      getDigitalLibrary: freezed == getDigitalLibrary
          ? _value.getDigitalLibrary!
          : getDigitalLibrary,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required this.wordThoughtResponse, this.getDigitalLibrary});

  @override
  final dynamic wordThoughtResponse;
  @override
  final dynamic getDigitalLibrary;

  @override
  String toString() {
    return 'DashboardState(wordThoughtResponse: $wordThoughtResponse, getDigitalLibrary: $getDigitalLibrary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            const DeepCollectionEquality()
                .equals(other.wordThoughtResponse, wordThoughtResponse) &&
            const DeepCollectionEquality()
                .equals(other.getDigitalLibrary, getDigitalLibrary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wordThoughtResponse),
      const DeepCollectionEquality().hash(getDigitalLibrary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final dynamic wordThoughtResponse,
      final dynamic getDigitalLibrary}) = _$DashboardStateImpl;

  @override
  dynamic get wordThoughtResponse;
  @override
  dynamic get getDigitalLibrary;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
