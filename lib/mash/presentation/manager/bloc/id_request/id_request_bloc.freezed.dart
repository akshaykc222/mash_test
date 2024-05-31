// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTransferRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdRequestEventCopyWith<$Res> {
  factory $IdRequestEventCopyWith(
          IdRequestEvent value, $Res Function(IdRequestEvent) then) =
      _$IdRequestEventCopyWithImpl<$Res, IdRequestEvent>;
}

/// @nodoc
class _$IdRequestEventCopyWithImpl<$Res, $Val extends IdRequestEvent>
    implements $IdRequestEventCopyWith<$Res> {
  _$IdRequestEventCopyWithImpl(this._value, this._then);

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
    extends _$IdRequestEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'IdRequestEvent.started()';
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
    required TResult Function() getTransferRequestEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
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
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements IdRequestEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetIdRequestImplCopyWith<$Res> {
  factory _$$GetIdRequestImplCopyWith(
          _$GetIdRequestImpl value, $Res Function(_$GetIdRequestImpl) then) =
      __$$GetIdRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIdRequestImplCopyWithImpl<$Res>
    extends _$IdRequestEventCopyWithImpl<$Res, _$GetIdRequestImpl>
    implements _$$GetIdRequestImplCopyWith<$Res> {
  __$$GetIdRequestImplCopyWithImpl(
      _$GetIdRequestImpl _value, $Res Function(_$GetIdRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIdRequestImpl implements _GetIdRequest {
  const _$GetIdRequestImpl();

  @override
  String toString() {
    return 'IdRequestEvent.getTransferRequestEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIdRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getTransferRequestEvent,
  }) {
    return getTransferRequestEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getTransferRequestEvent,
  }) {
    return getTransferRequestEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getTransferRequestEvent,
    required TResult orElse(),
  }) {
    if (getTransferRequestEvent != null) {
      return getTransferRequestEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetIdRequest value) getTransferRequestEvent,
  }) {
    return getTransferRequestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetIdRequest value)? getTransferRequestEvent,
  }) {
    return getTransferRequestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetIdRequest value)? getTransferRequestEvent,
    required TResult orElse(),
  }) {
    if (getTransferRequestEvent != null) {
      return getTransferRequestEvent(this);
    }
    return orElse();
  }
}

abstract class _GetIdRequest implements IdRequestEvent {
  const factory _GetIdRequest() = _$GetIdRequestImpl;
}

/// @nodoc
mixin _$IdRequestState {
  ResponseClassify<List<IdRequestEntity>>? get getIdRequestType =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdRequestStateCopyWith<IdRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdRequestStateCopyWith<$Res> {
  factory $IdRequestStateCopyWith(
          IdRequestState value, $Res Function(IdRequestState) then) =
      _$IdRequestStateCopyWithImpl<$Res, IdRequestState>;
  @useResult
  $Res call({ResponseClassify<List<IdRequestEntity>>? getIdRequestType});
}

/// @nodoc
class _$IdRequestStateCopyWithImpl<$Res, $Val extends IdRequestState>
    implements $IdRequestStateCopyWith<$Res> {
  _$IdRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getIdRequestType = freezed,
  }) {
    return _then(_value.copyWith(
      getIdRequestType: freezed == getIdRequestType
          ? _value.getIdRequestType
          : getIdRequestType // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<IdRequestEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdRequestStateImplCopyWith<$Res>
    implements $IdRequestStateCopyWith<$Res> {
  factory _$$IdRequestStateImplCopyWith(_$IdRequestStateImpl value,
          $Res Function(_$IdRequestStateImpl) then) =
      __$$IdRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseClassify<List<IdRequestEntity>>? getIdRequestType});
}

/// @nodoc
class __$$IdRequestStateImplCopyWithImpl<$Res>
    extends _$IdRequestStateCopyWithImpl<$Res, _$IdRequestStateImpl>
    implements _$$IdRequestStateImplCopyWith<$Res> {
  __$$IdRequestStateImplCopyWithImpl(
      _$IdRequestStateImpl _value, $Res Function(_$IdRequestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getIdRequestType = freezed,
  }) {
    return _then(_$IdRequestStateImpl(
      getIdRequestType: freezed == getIdRequestType
          ? _value.getIdRequestType
          : getIdRequestType // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<IdRequestEntity>>?,
    ));
  }
}

/// @nodoc

class _$IdRequestStateImpl implements _IdRequestState {
  const _$IdRequestStateImpl({this.getIdRequestType});

  @override
  final ResponseClassify<List<IdRequestEntity>>? getIdRequestType;

  @override
  String toString() {
    return 'IdRequestState(getIdRequestType: $getIdRequestType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdRequestStateImpl &&
            (identical(other.getIdRequestType, getIdRequestType) ||
                other.getIdRequestType == getIdRequestType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getIdRequestType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdRequestStateImplCopyWith<_$IdRequestStateImpl> get copyWith =>
      __$$IdRequestStateImplCopyWithImpl<_$IdRequestStateImpl>(
          this, _$identity);
}

abstract class _IdRequestState implements IdRequestState {
  const factory _IdRequestState(
          {final ResponseClassify<List<IdRequestEntity>>? getIdRequestType}) =
      _$IdRequestStateImpl;

  @override
  ResponseClassify<List<IdRequestEntity>>? get getIdRequestType;
  @override
  @JsonKey(ignore: true)
  _$$IdRequestStateImplCopyWith<_$IdRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
