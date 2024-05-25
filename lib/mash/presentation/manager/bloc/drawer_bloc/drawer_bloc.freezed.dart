// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsBoard,
    required TResult Function() getRoleMenuEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsBoard,
    TResult? Function()? getRoleMenuEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsBoard,
    TResult Function()? getRoleMenuEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsBoard value) getNewsBoard,
    required TResult Function(_GetRoleMenuEvent value) getRoleMenuEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsBoard value)? getNewsBoard,
    TResult? Function(_GetRoleMenuEvent value)? getRoleMenuEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsBoard value)? getNewsBoard,
    TResult Function(_GetRoleMenuEvent value)? getRoleMenuEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerEventCopyWith<$Res> {
  factory $DrawerEventCopyWith(
          DrawerEvent value, $Res Function(DrawerEvent) then) =
      _$DrawerEventCopyWithImpl<$Res, DrawerEvent>;
}

/// @nodoc
class _$DrawerEventCopyWithImpl<$Res, $Val extends DrawerEvent>
    implements $DrawerEventCopyWith<$Res> {
  _$DrawerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNewsBoardImplCopyWith<$Res> {
  factory _$$GetNewsBoardImplCopyWith(
          _$GetNewsBoardImpl value, $Res Function(_$GetNewsBoardImpl) then) =
      __$$GetNewsBoardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewsBoardImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$GetNewsBoardImpl>
    implements _$$GetNewsBoardImplCopyWith<$Res> {
  __$$GetNewsBoardImplCopyWithImpl(
      _$GetNewsBoardImpl _value, $Res Function(_$GetNewsBoardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNewsBoardImpl implements _GetNewsBoard {
  const _$GetNewsBoardImpl();

  @override
  String toString() {
    return 'DrawerEvent.getNewsBoard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNewsBoardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsBoard,
    required TResult Function() getRoleMenuEvent,
  }) {
    return getNewsBoard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsBoard,
    TResult? Function()? getRoleMenuEvent,
  }) {
    return getNewsBoard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsBoard,
    TResult Function()? getRoleMenuEvent,
    required TResult orElse(),
  }) {
    if (getNewsBoard != null) {
      return getNewsBoard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsBoard value) getNewsBoard,
    required TResult Function(_GetRoleMenuEvent value) getRoleMenuEvent,
  }) {
    return getNewsBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsBoard value)? getNewsBoard,
    TResult? Function(_GetRoleMenuEvent value)? getRoleMenuEvent,
  }) {
    return getNewsBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsBoard value)? getNewsBoard,
    TResult Function(_GetRoleMenuEvent value)? getRoleMenuEvent,
    required TResult orElse(),
  }) {
    if (getNewsBoard != null) {
      return getNewsBoard(this);
    }
    return orElse();
  }
}

abstract class _GetNewsBoard implements DrawerEvent {
  const factory _GetNewsBoard() = _$GetNewsBoardImpl;
}

/// @nodoc
abstract class _$$GetRoleMenuEventImplCopyWith<$Res> {
  factory _$$GetRoleMenuEventImplCopyWith(_$GetRoleMenuEventImpl value,
          $Res Function(_$GetRoleMenuEventImpl) then) =
      __$$GetRoleMenuEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRoleMenuEventImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$GetRoleMenuEventImpl>
    implements _$$GetRoleMenuEventImplCopyWith<$Res> {
  __$$GetRoleMenuEventImplCopyWithImpl(_$GetRoleMenuEventImpl _value,
      $Res Function(_$GetRoleMenuEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRoleMenuEventImpl implements _GetRoleMenuEvent {
  const _$GetRoleMenuEventImpl();

  @override
  String toString() {
    return 'DrawerEvent.getRoleMenuEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRoleMenuEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsBoard,
    required TResult Function() getRoleMenuEvent,
  }) {
    return getRoleMenuEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsBoard,
    TResult? Function()? getRoleMenuEvent,
  }) {
    return getRoleMenuEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsBoard,
    TResult Function()? getRoleMenuEvent,
    required TResult orElse(),
  }) {
    if (getRoleMenuEvent != null) {
      return getRoleMenuEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsBoard value) getNewsBoard,
    required TResult Function(_GetRoleMenuEvent value) getRoleMenuEvent,
  }) {
    return getRoleMenuEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsBoard value)? getNewsBoard,
    TResult? Function(_GetRoleMenuEvent value)? getRoleMenuEvent,
  }) {
    return getRoleMenuEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsBoard value)? getNewsBoard,
    TResult Function(_GetRoleMenuEvent value)? getRoleMenuEvent,
    required TResult orElse(),
  }) {
    if (getRoleMenuEvent != null) {
      return getRoleMenuEvent(this);
    }
    return orElse();
  }
}

abstract class _GetRoleMenuEvent implements DrawerEvent {
  const factory _GetRoleMenuEvent() = _$GetRoleMenuEventImpl;
}

/// @nodoc
mixin _$DrawerState {
  ResponseClassify<List<NewsBoardEntity?>> get newsBoardResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<RoleMenuEntity>> get roleMenuResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerStateCopyWith<DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res, DrawerState>;
  @useResult
  $Res call(
      {ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse,
      ResponseClassify<List<RoleMenuEntity>> roleMenuResponse});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res, $Val extends DrawerState>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsBoardResponse = null,
    Object? roleMenuResponse = null,
  }) {
    return _then(_value.copyWith(
      newsBoardResponse: null == newsBoardResponse
          ? _value.newsBoardResponse
          : newsBoardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NewsBoardEntity?>>,
      roleMenuResponse: null == roleMenuResponse
          ? _value.roleMenuResponse
          : roleMenuResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<RoleMenuEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawerStateImplCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$$DrawerStateImplCopyWith(
          _$DrawerStateImpl value, $Res Function(_$DrawerStateImpl) then) =
      __$$DrawerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse,
      ResponseClassify<List<RoleMenuEntity>> roleMenuResponse});
}

/// @nodoc
class __$$DrawerStateImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$DrawerStateImpl>
    implements _$$DrawerStateImplCopyWith<$Res> {
  __$$DrawerStateImplCopyWithImpl(
      _$DrawerStateImpl _value, $Res Function(_$DrawerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsBoardResponse = null,
    Object? roleMenuResponse = null,
  }) {
    return _then(_$DrawerStateImpl(
      newsBoardResponse: null == newsBoardResponse
          ? _value.newsBoardResponse
          : newsBoardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NewsBoardEntity?>>,
      roleMenuResponse: null == roleMenuResponse
          ? _value.roleMenuResponse
          : roleMenuResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<RoleMenuEntity>>,
    ));
  }
}

/// @nodoc

class _$DrawerStateImpl implements _DrawerState {
  const _$DrawerStateImpl(
      {required this.newsBoardResponse, required this.roleMenuResponse});

  @override
  final ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse;
  @override
  final ResponseClassify<List<RoleMenuEntity>> roleMenuResponse;

  @override
  String toString() {
    return 'DrawerState(newsBoardResponse: $newsBoardResponse, roleMenuResponse: $roleMenuResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerStateImpl &&
            (identical(other.newsBoardResponse, newsBoardResponse) ||
                other.newsBoardResponse == newsBoardResponse) &&
            (identical(other.roleMenuResponse, roleMenuResponse) ||
                other.roleMenuResponse == roleMenuResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, newsBoardResponse, roleMenuResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      __$$DrawerStateImplCopyWithImpl<_$DrawerStateImpl>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      {required final ResponseClassify<List<NewsBoardEntity?>>
          newsBoardResponse,
      required final ResponseClassify<List<RoleMenuEntity>>
          roleMenuResponse}) = _$DrawerStateImpl;

  @override
  ResponseClassify<List<NewsBoardEntity?>> get newsBoardResponse;
  @override
  ResponseClassify<List<RoleMenuEntity>> get roleMenuResponse;
  @override
  @JsonKey(ignore: true)
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
