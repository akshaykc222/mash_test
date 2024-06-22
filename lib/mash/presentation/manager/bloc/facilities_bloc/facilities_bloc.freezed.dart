// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facilities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FacilitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId) getFacilityDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId)? getFacilityDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId)? getFacilityDashBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesEventCopyWith<$Res> {
  factory $FacilitiesEventCopyWith(
          FacilitiesEvent value, $Res Function(FacilitiesEvent) then) =
      _$FacilitiesEventCopyWithImpl<$Res, FacilitiesEvent>;
}

/// @nodoc
class _$FacilitiesEventCopyWithImpl<$Res, $Val extends FacilitiesEvent>
    implements $FacilitiesEventCopyWith<$Res> {
  _$FacilitiesEventCopyWithImpl(this._value, this._then);

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
    extends _$FacilitiesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'FacilitiesEvent.started()';
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
    required TResult Function(String? pTabId) getFacilityDashBoard,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId)? getFacilityDashBoard,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId)? getFacilityDashBoard,
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
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FacilitiesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFacilityDashBoardDataImplCopyWith<$Res> {
  factory _$$GetFacilityDashBoardDataImplCopyWith(
          _$GetFacilityDashBoardDataImpl value,
          $Res Function(_$GetFacilityDashBoardDataImpl) then) =
      __$$GetFacilityDashBoardDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? pTabId});
}

/// @nodoc
class __$$GetFacilityDashBoardDataImplCopyWithImpl<$Res>
    extends _$FacilitiesEventCopyWithImpl<$Res, _$GetFacilityDashBoardDataImpl>
    implements _$$GetFacilityDashBoardDataImplCopyWith<$Res> {
  __$$GetFacilityDashBoardDataImplCopyWithImpl(
      _$GetFacilityDashBoardDataImpl _value,
      $Res Function(_$GetFacilityDashBoardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pTabId = freezed,
  }) {
    return _then(_$GetFacilityDashBoardDataImpl(
      pTabId: freezed == pTabId
          ? _value.pTabId
          : pTabId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFacilityDashBoardDataImpl implements _GetFacilityDashBoardData {
  const _$GetFacilityDashBoardDataImpl({required this.pTabId});

  @override
  final String? pTabId;

  @override
  String toString() {
    return 'FacilitiesEvent.getFacilityDashBoard(pTabId: $pTabId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityDashBoardDataImpl &&
            (identical(other.pTabId, pTabId) || other.pTabId == pTabId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pTabId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityDashBoardDataImplCopyWith<_$GetFacilityDashBoardDataImpl>
      get copyWith => __$$GetFacilityDashBoardDataImplCopyWithImpl<
          _$GetFacilityDashBoardDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? pTabId) getFacilityDashBoard,
  }) {
    return getFacilityDashBoard(pTabId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? pTabId)? getFacilityDashBoard,
  }) {
    return getFacilityDashBoard?.call(pTabId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? pTabId)? getFacilityDashBoard,
    required TResult orElse(),
  }) {
    if (getFacilityDashBoard != null) {
      return getFacilityDashBoard(pTabId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFacilityDashBoardData value)
        getFacilityDashBoard,
  }) {
    return getFacilityDashBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
  }) {
    return getFacilityDashBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFacilityDashBoardData value)? getFacilityDashBoard,
    required TResult orElse(),
  }) {
    if (getFacilityDashBoard != null) {
      return getFacilityDashBoard(this);
    }
    return orElse();
  }
}

abstract class _GetFacilityDashBoardData implements FacilitiesEvent {
  const factory _GetFacilityDashBoardData({required final String? pTabId}) =
      _$GetFacilityDashBoardDataImpl;

  String? get pTabId;
  @JsonKey(ignore: true)
  _$$GetFacilityDashBoardDataImplCopyWith<_$GetFacilityDashBoardDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FacilitiesState {
  ResponseClassify<List<GetFacilityDashBoardEntity?>>
      get getFacilityDashBoard => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FacilitiesStateCopyWith<FacilitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesStateCopyWith<$Res> {
  factory $FacilitiesStateCopyWith(
          FacilitiesState value, $Res Function(FacilitiesState) then) =
      _$FacilitiesStateCopyWithImpl<$Res, FacilitiesState>;
  @useResult
  $Res call(
      {ResponseClassify<List<GetFacilityDashBoardEntity?>>
          getFacilityDashBoard});
}

/// @nodoc
class _$FacilitiesStateCopyWithImpl<$Res, $Val extends FacilitiesState>
    implements $FacilitiesStateCopyWith<$Res> {
  _$FacilitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getFacilityDashBoard = null,
  }) {
    return _then(_value.copyWith(
      getFacilityDashBoard: null == getFacilityDashBoard
          ? _value.getFacilityDashBoard
          : getFacilityDashBoard // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetFacilityDashBoardEntity?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilitiesStateImplCopyWith<$Res>
    implements $FacilitiesStateCopyWith<$Res> {
  factory _$$FacilitiesStateImplCopyWith(_$FacilitiesStateImpl value,
          $Res Function(_$FacilitiesStateImpl) then) =
      __$$FacilitiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<GetFacilityDashBoardEntity?>>
          getFacilityDashBoard});
}

/// @nodoc
class __$$FacilitiesStateImplCopyWithImpl<$Res>
    extends _$FacilitiesStateCopyWithImpl<$Res, _$FacilitiesStateImpl>
    implements _$$FacilitiesStateImplCopyWith<$Res> {
  __$$FacilitiesStateImplCopyWithImpl(
      _$FacilitiesStateImpl _value, $Res Function(_$FacilitiesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getFacilityDashBoard = null,
  }) {
    return _then(_$FacilitiesStateImpl(
      getFacilityDashBoard: null == getFacilityDashBoard
          ? _value.getFacilityDashBoard
          : getFacilityDashBoard // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<GetFacilityDashBoardEntity?>>,
    ));
  }
}

/// @nodoc

class _$FacilitiesStateImpl implements _FacilitiesState {
  const _$FacilitiesStateImpl({required this.getFacilityDashBoard});

  @override
  final ResponseClassify<List<GetFacilityDashBoardEntity?>>
      getFacilityDashBoard;

  @override
  String toString() {
    return 'FacilitiesState(getFacilityDashBoard: $getFacilityDashBoard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilitiesStateImpl &&
            (identical(other.getFacilityDashBoard, getFacilityDashBoard) ||
                other.getFacilityDashBoard == getFacilityDashBoard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getFacilityDashBoard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilitiesStateImplCopyWith<_$FacilitiesStateImpl> get copyWith =>
      __$$FacilitiesStateImplCopyWithImpl<_$FacilitiesStateImpl>(
          this, _$identity);
}

abstract class _FacilitiesState implements FacilitiesState {
  const factory _FacilitiesState(
      {required final ResponseClassify<List<GetFacilityDashBoardEntity?>>
          getFacilityDashBoard}) = _$FacilitiesStateImpl;

  @override
  ResponseClassify<List<GetFacilityDashBoardEntity?>> get getFacilityDashBoard;
  @override
  @JsonKey(ignore: true)
  _$$FacilitiesStateImplCopyWith<_$FacilitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
