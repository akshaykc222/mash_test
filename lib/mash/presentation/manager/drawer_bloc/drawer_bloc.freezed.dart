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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsBoard value) getNewsBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsBoard value)? getNewsBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsBoard value)? getNewsBoard,
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
  }) {
    return getNewsBoard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsBoard,
  }) {
    return getNewsBoard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsBoard,
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
  }) {
    return getNewsBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsBoard value)? getNewsBoard,
  }) {
    return getNewsBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsBoard value)? getNewsBoard,
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
mixin _$DrawerState {
  ResponseClassify<List<NewsBoardEntity?>> get newsBoardResponse =>
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
  $Res call({ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse});
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
  }) {
    return _then(_value.copyWith(
      newsBoardResponse: null == newsBoardResponse
          ? _value.newsBoardResponse
          : newsBoardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NewsBoardEntity?>>,
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
  $Res call({ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse});
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
  }) {
    return _then(_$DrawerStateImpl(
      newsBoardResponse: null == newsBoardResponse
          ? _value.newsBoardResponse
          : newsBoardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NewsBoardEntity?>>,
    ));
  }
}

/// @nodoc

class _$DrawerStateImpl implements _DrawerState {
  const _$DrawerStateImpl({required this.newsBoardResponse});

  @override
  final ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse;

  @override
  String toString() {
    return 'DrawerState(newsBoardResponse: $newsBoardResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerStateImpl &&
            (identical(other.newsBoardResponse, newsBoardResponse) ||
                other.newsBoardResponse == newsBoardResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsBoardResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      __$$DrawerStateImplCopyWithImpl<_$DrawerStateImpl>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      {required final ResponseClassify<List<NewsBoardEntity?>>
          newsBoardResponse}) = _$DrawerStateImpl;

  @override
  ResponseClassify<List<NewsBoardEntity?>> get newsBoardResponse;
  @override
  @JsonKey(ignore: true)
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
