// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_work_notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeWorkNotesEvent {
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate)
        getNotesWorkReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate)? getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate)? getNotesWorkReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate)? getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate)? getNotesWorkReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWorkNotesEventCopyWith<HomeWorkNotesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWorkNotesEventCopyWith<$Res> {
  factory $HomeWorkNotesEventCopyWith(
          HomeWorkNotesEvent value, $Res Function(HomeWorkNotesEvent) then) =
      _$HomeWorkNotesEventCopyWithImpl<$Res, HomeWorkNotesEvent>;
  @useResult
  $Res call({String startDate, String endDate});
}

/// @nodoc
class _$HomeWorkNotesEventCopyWithImpl<$Res, $Val extends HomeWorkNotesEvent>
    implements $HomeWorkNotesEventCopyWith<$Res> {
  _$HomeWorkNotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetHomeWorkReportEventImplCopyWith<$Res>
    implements $HomeWorkNotesEventCopyWith<$Res> {
  factory _$$GetHomeWorkReportEventImplCopyWith(
          _$GetHomeWorkReportEventImpl value,
          $Res Function(_$GetHomeWorkReportEventImpl) then) =
      __$$GetHomeWorkReportEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startDate, String endDate});
}

/// @nodoc
class __$$GetHomeWorkReportEventImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesEventCopyWithImpl<$Res, _$GetHomeWorkReportEventImpl>
    implements _$$GetHomeWorkReportEventImplCopyWith<$Res> {
  __$$GetHomeWorkReportEventImplCopyWithImpl(
      _$GetHomeWorkReportEventImpl _value,
      $Res Function(_$GetHomeWorkReportEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$GetHomeWorkReportEventImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeWorkReportEventImpl implements _GetHomeWorkReportEvent {
  const _$GetHomeWorkReportEventImpl(
      {required this.startDate, required this.endDate});

  @override
  final String startDate;
  @override
  final String endDate;

  @override
  String toString() {
    return 'HomeWorkNotesEvent.getHomeWorkReportEvent(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeWorkReportEventImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeWorkReportEventImplCopyWith<_$GetHomeWorkReportEventImpl>
      get copyWith => __$$GetHomeWorkReportEventImplCopyWithImpl<
          _$GetHomeWorkReportEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate)
        getNotesWorkReport,
  }) {
    return getHomeWorkReportEvent(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate)? getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate)? getNotesWorkReport,
  }) {
    return getHomeWorkReportEvent?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate)? getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate)? getNotesWorkReport,
    required TResult orElse(),
  }) {
    if (getHomeWorkReportEvent != null) {
      return getHomeWorkReportEvent(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
  }) {
    return getHomeWorkReportEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
  }) {
    return getHomeWorkReportEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    required TResult orElse(),
  }) {
    if (getHomeWorkReportEvent != null) {
      return getHomeWorkReportEvent(this);
    }
    return orElse();
  }
}

abstract class _GetHomeWorkReportEvent implements HomeWorkNotesEvent {
  const factory _GetHomeWorkReportEvent(
      {required final String startDate,
      required final String endDate}) = _$GetHomeWorkReportEventImpl;

  @override
  String get startDate;
  @override
  String get endDate;
  @override
  @JsonKey(ignore: true)
  _$$GetHomeWorkReportEventImplCopyWith<_$GetHomeWorkReportEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotesWorkReportImplCopyWith<$Res>
    implements $HomeWorkNotesEventCopyWith<$Res> {
  factory _$$GetNotesWorkReportImplCopyWith(_$GetNotesWorkReportImpl value,
          $Res Function(_$GetNotesWorkReportImpl) then) =
      __$$GetNotesWorkReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startDate, String endDate});
}

/// @nodoc
class __$$GetNotesWorkReportImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesEventCopyWithImpl<$Res, _$GetNotesWorkReportImpl>
    implements _$$GetNotesWorkReportImplCopyWith<$Res> {
  __$$GetNotesWorkReportImplCopyWithImpl(_$GetNotesWorkReportImpl _value,
      $Res Function(_$GetNotesWorkReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$GetNotesWorkReportImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNotesWorkReportImpl implements _GetNotesWorkReport {
  const _$GetNotesWorkReportImpl(
      {required this.startDate, required this.endDate});

  @override
  final String startDate;
  @override
  final String endDate;

  @override
  String toString() {
    return 'HomeWorkNotesEvent.getNotesWorkReport(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotesWorkReportImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotesWorkReportImplCopyWith<_$GetNotesWorkReportImpl> get copyWith =>
      __$$GetNotesWorkReportImplCopyWithImpl<_$GetNotesWorkReportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate, String endDate)
        getHomeWorkReportEvent,
    required TResult Function(String startDate, String endDate)
        getNotesWorkReport,
  }) {
    return getNotesWorkReport(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate, String endDate)? getHomeWorkReportEvent,
    TResult? Function(String startDate, String endDate)? getNotesWorkReport,
  }) {
    return getNotesWorkReport?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate, String endDate)? getHomeWorkReportEvent,
    TResult Function(String startDate, String endDate)? getNotesWorkReport,
    required TResult orElse(),
  }) {
    if (getNotesWorkReport != null) {
      return getNotesWorkReport(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeWorkReportEvent value)
        getHomeWorkReportEvent,
    required TResult Function(_GetNotesWorkReport value) getNotesWorkReport,
  }) {
    return getNotesWorkReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult? Function(_GetNotesWorkReport value)? getNotesWorkReport,
  }) {
    return getNotesWorkReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeWorkReportEvent value)? getHomeWorkReportEvent,
    TResult Function(_GetNotesWorkReport value)? getNotesWorkReport,
    required TResult orElse(),
  }) {
    if (getNotesWorkReport != null) {
      return getNotesWorkReport(this);
    }
    return orElse();
  }
}

abstract class _GetNotesWorkReport implements HomeWorkNotesEvent {
  const factory _GetNotesWorkReport(
      {required final String startDate,
      required final String endDate}) = _$GetNotesWorkReportImpl;

  @override
  String get startDate;
  @override
  String get endDate;
  @override
  @JsonKey(ignore: true)
  _$$GetNotesWorkReportImplCopyWith<_$GetNotesWorkReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWorkNotesState {
  ResponseClassify<List<HomeWorkReportsEntity>> get homeWorkReportResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<dynamic> get noteWorkReportResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWorkNotesStateCopyWith<HomeWorkNotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWorkNotesStateCopyWith<$Res> {
  factory $HomeWorkNotesStateCopyWith(
          HomeWorkNotesState value, $Res Function(HomeWorkNotesState) then) =
      _$HomeWorkNotesStateCopyWithImpl<$Res, HomeWorkNotesState>;
  @useResult
  $Res call(
      {ResponseClassify<List<HomeWorkReportsEntity>> homeWorkReportResponse,
      ResponseClassify<dynamic> noteWorkReportResponse});
}

/// @nodoc
class _$HomeWorkNotesStateCopyWithImpl<$Res, $Val extends HomeWorkNotesState>
    implements $HomeWorkNotesStateCopyWith<$Res> {
  _$HomeWorkNotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkReportResponse = null,
    Object? noteWorkReportResponse = null,
  }) {
    return _then(_value.copyWith(
      homeWorkReportResponse: null == homeWorkReportResponse
          ? _value.homeWorkReportResponse
          : homeWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<HomeWorkReportsEntity>>,
      noteWorkReportResponse: null == noteWorkReportResponse
          ? _value.noteWorkReportResponse
          : noteWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeWorkNotesStateImplCopyWith<$Res>
    implements $HomeWorkNotesStateCopyWith<$Res> {
  factory _$$HomeWorkNotesStateImplCopyWith(_$HomeWorkNotesStateImpl value,
          $Res Function(_$HomeWorkNotesStateImpl) then) =
      __$$HomeWorkNotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<HomeWorkReportsEntity>> homeWorkReportResponse,
      ResponseClassify<dynamic> noteWorkReportResponse});
}

/// @nodoc
class __$$HomeWorkNotesStateImplCopyWithImpl<$Res>
    extends _$HomeWorkNotesStateCopyWithImpl<$Res, _$HomeWorkNotesStateImpl>
    implements _$$HomeWorkNotesStateImplCopyWith<$Res> {
  __$$HomeWorkNotesStateImplCopyWithImpl(_$HomeWorkNotesStateImpl _value,
      $Res Function(_$HomeWorkNotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeWorkReportResponse = null,
    Object? noteWorkReportResponse = null,
  }) {
    return _then(_$HomeWorkNotesStateImpl(
      homeWorkReportResponse: null == homeWorkReportResponse
          ? _value.homeWorkReportResponse
          : homeWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<HomeWorkReportsEntity>>,
      noteWorkReportResponse: null == noteWorkReportResponse
          ? _value.noteWorkReportResponse
          : noteWorkReportResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<dynamic>,
    ));
  }
}

/// @nodoc

class _$HomeWorkNotesStateImpl implements _HomeWorkNotesState {
  const _$HomeWorkNotesStateImpl(
      {required this.homeWorkReportResponse,
      required this.noteWorkReportResponse});

  @override
  final ResponseClassify<List<HomeWorkReportsEntity>> homeWorkReportResponse;
  @override
  final ResponseClassify<dynamic> noteWorkReportResponse;

  @override
  String toString() {
    return 'HomeWorkNotesState(homeWorkReportResponse: $homeWorkReportResponse, noteWorkReportResponse: $noteWorkReportResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeWorkNotesStateImpl &&
            (identical(other.homeWorkReportResponse, homeWorkReportResponse) ||
                other.homeWorkReportResponse == homeWorkReportResponse) &&
            (identical(other.noteWorkReportResponse, noteWorkReportResponse) ||
                other.noteWorkReportResponse == noteWorkReportResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, homeWorkReportResponse, noteWorkReportResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeWorkNotesStateImplCopyWith<_$HomeWorkNotesStateImpl> get copyWith =>
      __$$HomeWorkNotesStateImplCopyWithImpl<_$HomeWorkNotesStateImpl>(
          this, _$identity);
}

abstract class _HomeWorkNotesState implements HomeWorkNotesState {
  const factory _HomeWorkNotesState(
          {required final ResponseClassify<List<HomeWorkReportsEntity>>
              homeWorkReportResponse,
          required final ResponseClassify<dynamic> noteWorkReportResponse}) =
      _$HomeWorkNotesStateImpl;

  @override
  ResponseClassify<List<HomeWorkReportsEntity>> get homeWorkReportResponse;
  @override
  ResponseClassify<dynamic> get noteWorkReportResponse;
  @override
  @JsonKey(ignore: true)
  _$$HomeWorkNotesStateImplCopyWith<_$HomeWorkNotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
