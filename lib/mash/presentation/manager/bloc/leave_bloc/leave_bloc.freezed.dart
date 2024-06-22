// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, String studentLeaveStatus)
        getLeaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveEventCopyWith<$Res> {
  factory $LeaveEventCopyWith(
          LeaveEvent value, $Res Function(LeaveEvent) then) =
      _$LeaveEventCopyWithImpl<$Res, LeaveEvent>;
}

/// @nodoc
class _$LeaveEventCopyWithImpl<$Res, $Val extends LeaveEvent>
    implements $LeaveEventCopyWith<$Res> {
  _$LeaveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LeaveEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, String studentLeaveStatus)
        getLeaveStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LeaveEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetLeaveDashboardDataImplCopyWith<$Res> {
  factory _$$GetLeaveDashboardDataImplCopyWith(
          _$GetLeaveDashboardDataImpl value,
          $Res Function(_$GetLeaveDashboardDataImpl) then) =
      __$$GetLeaveDashboardDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLeaveDashboardDataImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$GetLeaveDashboardDataImpl>
    implements _$$GetLeaveDashboardDataImplCopyWith<$Res> {
  __$$GetLeaveDashboardDataImplCopyWithImpl(_$GetLeaveDashboardDataImpl _value,
      $Res Function(_$GetLeaveDashboardDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLeaveDashboardDataImpl implements _GetLeaveDashboardData {
  const _$GetLeaveDashboardDataImpl();

  @override
  String toString() {
    return 'LeaveEvent.getLeaveDashboardData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaveDashboardDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, String studentLeaveStatus)
        getLeaveStatus,
  }) {
    return getLeaveDashboardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
  }) {
    return getLeaveDashboardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
    required TResult orElse(),
  }) {
    if (getLeaveDashboardData != null) {
      return getLeaveDashboardData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
  }) {
    return getLeaveDashboardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
  }) {
    return getLeaveDashboardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    required TResult orElse(),
  }) {
    if (getLeaveDashboardData != null) {
      return getLeaveDashboardData(this);
    }
    return orElse();
  }
}

abstract class _GetLeaveDashboardData implements LeaveEvent {
  const factory _GetLeaveDashboardData() = _$GetLeaveDashboardDataImpl;
}

/// @nodoc
abstract class _$$GetLeaveStatusImplCopyWith<$Res> {
  factory _$$GetLeaveStatusImplCopyWith(_$GetLeaveStatusImpl value,
          $Res Function(_$GetLeaveStatusImpl) then) =
      __$$GetLeaveStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId, String studentLeaveStatus});
}

/// @nodoc
class __$$GetLeaveStatusImplCopyWithImpl<$Res>
    extends _$LeaveEventCopyWithImpl<$Res, _$GetLeaveStatusImpl>
    implements _$$GetLeaveStatusImplCopyWith<$Res> {
  __$$GetLeaveStatusImplCopyWithImpl(
      _$GetLeaveStatusImpl _value, $Res Function(_$GetLeaveStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentLeaveStatus = null,
  }) {
    return _then(_$GetLeaveStatusImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentLeaveStatus: null == studentLeaveStatus
          ? _value.studentLeaveStatus
          : studentLeaveStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLeaveStatusImpl implements _GetLeaveStatus {
  const _$GetLeaveStatusImpl(
      {required this.studentId, required this.studentLeaveStatus});

  @override
  final String studentId;
  @override
  final String studentLeaveStatus;

  @override
  String toString() {
    return 'LeaveEvent.getLeaveStatus(studentId: $studentId, studentLeaveStatus: $studentLeaveStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaveStatusImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentLeaveStatus, studentLeaveStatus) ||
                other.studentLeaveStatus == studentLeaveStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId, studentLeaveStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLeaveStatusImplCopyWith<_$GetLeaveStatusImpl> get copyWith =>
      __$$GetLeaveStatusImplCopyWithImpl<_$GetLeaveStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getLeaveDashboardData,
    required TResult Function(String studentId, String studentLeaveStatus)
        getLeaveStatus,
  }) {
    return getLeaveStatus(studentId, studentLeaveStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
    TResult? Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
  }) {
    return getLeaveStatus?.call(studentId, studentLeaveStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    TResult Function(String studentId, String studentLeaveStatus)?
        getLeaveStatus,
    required TResult orElse(),
  }) {
    if (getLeaveStatus != null) {
      return getLeaveStatus(studentId, studentLeaveStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
    required TResult Function(_GetLeaveStatus value) getLeaveStatus,
  }) {
    return getLeaveStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult? Function(_GetLeaveStatus value)? getLeaveStatus,
  }) {
    return getLeaveStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
    TResult Function(_GetLeaveStatus value)? getLeaveStatus,
    required TResult orElse(),
  }) {
    if (getLeaveStatus != null) {
      return getLeaveStatus(this);
    }
    return orElse();
  }
}

abstract class _GetLeaveStatus implements LeaveEvent {
  const factory _GetLeaveStatus(
      {required final String studentId,
      required final String studentLeaveStatus}) = _$GetLeaveStatusImpl;

  String get studentId;
  String get studentLeaveStatus;
  @JsonKey(ignore: true)
  _$$GetLeaveStatusImplCopyWith<_$GetLeaveStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaveState {
  ResponseClassify<List<LeaveDashboardEntity>>? get getLeaveDashboardData =>
      throw _privateConstructorUsedError;
  ResponseClassify<LeaveStatusEntity> get leaveStatusResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaveStateCopyWith<LeaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveStateCopyWith<$Res> {
  factory $LeaveStateCopyWith(
          LeaveState value, $Res Function(LeaveState) then) =
      _$LeaveStateCopyWithImpl<$Res, LeaveState>;
  @useResult
  $Res call(
      {ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData,
      ResponseClassify<LeaveStatusEntity> leaveStatusResponse});
}

/// @nodoc
class _$LeaveStateCopyWithImpl<$Res, $Val extends LeaveState>
    implements $LeaveStateCopyWith<$Res> {
  _$LeaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLeaveDashboardData = freezed,
    Object? leaveStatusResponse = null,
  }) {
    return _then(_value.copyWith(
      getLeaveDashboardData: freezed == getLeaveDashboardData
          ? _value.getLeaveDashboardData
          : getLeaveDashboardData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LeaveDashboardEntity>>?,
      leaveStatusResponse: null == leaveStatusResponse
          ? _value.leaveStatusResponse
          : leaveStatusResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<LeaveStatusEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveStateImplCopyWith<$Res>
    implements $LeaveStateCopyWith<$Res> {
  factory _$$LeaveStateImplCopyWith(
          _$LeaveStateImpl value, $Res Function(_$LeaveStateImpl) then) =
      __$$LeaveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData,
      ResponseClassify<LeaveStatusEntity> leaveStatusResponse});
}

/// @nodoc
class __$$LeaveStateImplCopyWithImpl<$Res>
    extends _$LeaveStateCopyWithImpl<$Res, _$LeaveStateImpl>
    implements _$$LeaveStateImplCopyWith<$Res> {
  __$$LeaveStateImplCopyWithImpl(
      _$LeaveStateImpl _value, $Res Function(_$LeaveStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLeaveDashboardData = freezed,
    Object? leaveStatusResponse = null,
  }) {
    return _then(_$LeaveStateImpl(
      getLeaveDashboardData: freezed == getLeaveDashboardData
          ? _value.getLeaveDashboardData
          : getLeaveDashboardData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LeaveDashboardEntity>>?,
      leaveStatusResponse: null == leaveStatusResponse
          ? _value.leaveStatusResponse
          : leaveStatusResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<LeaveStatusEntity>,
    ));
  }
}

/// @nodoc

class _$LeaveStateImpl implements _LeaveState {
  const _$LeaveStateImpl(
      {this.getLeaveDashboardData, required this.leaveStatusResponse});

  @override
  final ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData;
  @override
  final ResponseClassify<LeaveStatusEntity> leaveStatusResponse;

  @override
  String toString() {
    return 'LeaveState(getLeaveDashboardData: $getLeaveDashboardData, leaveStatusResponse: $leaveStatusResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveStateImpl &&
            (identical(other.getLeaveDashboardData, getLeaveDashboardData) ||
                other.getLeaveDashboardData == getLeaveDashboardData) &&
            (identical(other.leaveStatusResponse, leaveStatusResponse) ||
                other.leaveStatusResponse == leaveStatusResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getLeaveDashboardData, leaveStatusResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      __$$LeaveStateImplCopyWithImpl<_$LeaveStateImpl>(this, _$identity);
}

abstract class _LeaveState implements LeaveState {
  const factory _LeaveState(
      {final ResponseClassify<List<LeaveDashboardEntity>>?
          getLeaveDashboardData,
      required final ResponseClassify<LeaveStatusEntity>
          leaveStatusResponse}) = _$LeaveStateImpl;

  @override
  ResponseClassify<List<LeaveDashboardEntity>>? get getLeaveDashboardData;
  @override
  ResponseClassify<LeaveStatusEntity> get leaveStatusResponse;
  @override
  @JsonKey(ignore: true)
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
