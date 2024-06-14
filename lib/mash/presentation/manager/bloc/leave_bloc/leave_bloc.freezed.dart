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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetLeaveDashboardData value)
        getLeaveDashboardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
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
  }) {
    return getLeaveDashboardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getLeaveDashboardData,
  }) {
    return getLeaveDashboardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getLeaveDashboardData,
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
  }) {
    return getLeaveDashboardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
  }) {
    return getLeaveDashboardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetLeaveDashboardData value)? getLeaveDashboardData,
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
mixin _$LeaveState {
  ResponseClassify<List<LeaveDashboardEntity>>? get getLeaveDashboardData =>
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
      {ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData});
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
  }) {
    return _then(_value.copyWith(
      getLeaveDashboardData: freezed == getLeaveDashboardData
          ? _value.getLeaveDashboardData
          : getLeaveDashboardData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LeaveDashboardEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryStateImplCopyWith<$Res>
    implements $LeaveStateCopyWith<$Res> {
  factory _$$LibraryStateImplCopyWith(
          _$LibraryStateImpl value, $Res Function(_$LibraryStateImpl) then) =
      __$$LibraryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData});
}

/// @nodoc
class __$$LibraryStateImplCopyWithImpl<$Res>
    extends _$LeaveStateCopyWithImpl<$Res, _$LibraryStateImpl>
    implements _$$LibraryStateImplCopyWith<$Res> {
  __$$LibraryStateImplCopyWithImpl(
      _$LibraryStateImpl _value, $Res Function(_$LibraryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLeaveDashboardData = freezed,
  }) {
    return _then(_$LibraryStateImpl(
      getLeaveDashboardData: freezed == getLeaveDashboardData
          ? _value.getLeaveDashboardData
          : getLeaveDashboardData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<LeaveDashboardEntity>>?,
    ));
  }
}

/// @nodoc

class _$LibraryStateImpl implements _LibraryState {
  const _$LibraryStateImpl({this.getLeaveDashboardData});

  @override
  final ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData;

  @override
  String toString() {
    return 'LeaveState(getLeaveDashboardData: $getLeaveDashboardData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryStateImpl &&
            (identical(other.getLeaveDashboardData, getLeaveDashboardData) ||
                other.getLeaveDashboardData == getLeaveDashboardData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getLeaveDashboardData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryStateImplCopyWith<_$LibraryStateImpl> get copyWith =>
      __$$LibraryStateImplCopyWithImpl<_$LibraryStateImpl>(this, _$identity);
}

abstract class _LibraryState implements LeaveState {
  const factory _LibraryState(
      {final ResponseClassify<List<LeaveDashboardEntity>>?
          getLeaveDashboardData}) = _$LibraryStateImpl;

  @override
  ResponseClassify<List<LeaveDashboardEntity>>? get getLeaveDashboardData;
  @override
  @JsonKey(ignore: true)
  _$$LibraryStateImplCopyWith<_$LibraryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
