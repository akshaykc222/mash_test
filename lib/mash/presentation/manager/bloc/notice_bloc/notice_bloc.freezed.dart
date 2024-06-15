// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNoticePopUp,
    required TResult Function(String noticeId) getAllNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNoticePopUp,
    TResult? Function(String noticeId)? getAllNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNoticePopUp,
    TResult Function(String noticeId)? getAllNotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNoticePopUp value) getNoticePopUp,
    required TResult Function(_GetAllNotice value) getAllNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNoticePopUp value)? getNoticePopUp,
    TResult? Function(_GetAllNotice value)? getAllNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNoticePopUp value)? getNoticePopUp,
    TResult Function(_GetAllNotice value)? getAllNotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeEventCopyWith<$Res> {
  factory $NoticeEventCopyWith(
          NoticeEvent value, $Res Function(NoticeEvent) then) =
      _$NoticeEventCopyWithImpl<$Res, NoticeEvent>;
}

/// @nodoc
class _$NoticeEventCopyWithImpl<$Res, $Val extends NoticeEvent>
    implements $NoticeEventCopyWith<$Res> {
  _$NoticeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNoticePopUpImplCopyWith<$Res> {
  factory _$$GetNoticePopUpImplCopyWith(_$GetNoticePopUpImpl value,
          $Res Function(_$GetNoticePopUpImpl) then) =
      __$$GetNoticePopUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNoticePopUpImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$GetNoticePopUpImpl>
    implements _$$GetNoticePopUpImplCopyWith<$Res> {
  __$$GetNoticePopUpImplCopyWithImpl(
      _$GetNoticePopUpImpl _value, $Res Function(_$GetNoticePopUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNoticePopUpImpl implements _GetNoticePopUp {
  const _$GetNoticePopUpImpl();

  @override
  String toString() {
    return 'NoticeEvent.getNoticePopUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNoticePopUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNoticePopUp,
    required TResult Function(String noticeId) getAllNotice,
  }) {
    return getNoticePopUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNoticePopUp,
    TResult? Function(String noticeId)? getAllNotice,
  }) {
    return getNoticePopUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNoticePopUp,
    TResult Function(String noticeId)? getAllNotice,
    required TResult orElse(),
  }) {
    if (getNoticePopUp != null) {
      return getNoticePopUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNoticePopUp value) getNoticePopUp,
    required TResult Function(_GetAllNotice value) getAllNotice,
  }) {
    return getNoticePopUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNoticePopUp value)? getNoticePopUp,
    TResult? Function(_GetAllNotice value)? getAllNotice,
  }) {
    return getNoticePopUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNoticePopUp value)? getNoticePopUp,
    TResult Function(_GetAllNotice value)? getAllNotice,
    required TResult orElse(),
  }) {
    if (getNoticePopUp != null) {
      return getNoticePopUp(this);
    }
    return orElse();
  }
}

abstract class _GetNoticePopUp implements NoticeEvent {
  const factory _GetNoticePopUp() = _$GetNoticePopUpImpl;
}

/// @nodoc
abstract class _$$GetAllNoticeImplCopyWith<$Res> {
  factory _$$GetAllNoticeImplCopyWith(
          _$GetAllNoticeImpl value, $Res Function(_$GetAllNoticeImpl) then) =
      __$$GetAllNoticeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String noticeId});
}

/// @nodoc
class __$$GetAllNoticeImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$GetAllNoticeImpl>
    implements _$$GetAllNoticeImplCopyWith<$Res> {
  __$$GetAllNoticeImplCopyWithImpl(
      _$GetAllNoticeImpl _value, $Res Function(_$GetAllNoticeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
  }) {
    return _then(_$GetAllNoticeImpl(
      noticeId: null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllNoticeImpl implements _GetAllNotice {
  const _$GetAllNoticeImpl({required this.noticeId});

  @override
  final String noticeId;

  @override
  String toString() {
    return 'NoticeEvent.getAllNotice(noticeId: $noticeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllNoticeImpl &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noticeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllNoticeImplCopyWith<_$GetAllNoticeImpl> get copyWith =>
      __$$GetAllNoticeImplCopyWithImpl<_$GetAllNoticeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNoticePopUp,
    required TResult Function(String noticeId) getAllNotice,
  }) {
    return getAllNotice(noticeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNoticePopUp,
    TResult? Function(String noticeId)? getAllNotice,
  }) {
    return getAllNotice?.call(noticeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNoticePopUp,
    TResult Function(String noticeId)? getAllNotice,
    required TResult orElse(),
  }) {
    if (getAllNotice != null) {
      return getAllNotice(noticeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNoticePopUp value) getNoticePopUp,
    required TResult Function(_GetAllNotice value) getAllNotice,
  }) {
    return getAllNotice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNoticePopUp value)? getNoticePopUp,
    TResult? Function(_GetAllNotice value)? getAllNotice,
  }) {
    return getAllNotice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNoticePopUp value)? getNoticePopUp,
    TResult Function(_GetAllNotice value)? getAllNotice,
    required TResult orElse(),
  }) {
    if (getAllNotice != null) {
      return getAllNotice(this);
    }
    return orElse();
  }
}

abstract class _GetAllNotice implements NoticeEvent {
  const factory _GetAllNotice({required final String noticeId}) =
      _$GetAllNoticeImpl;

  String get noticeId;
  @JsonKey(ignore: true)
  _$$GetAllNoticeImplCopyWith<_$GetAllNoticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoticeState {
  ResponseClassify<List<NoticeAllEntity?>> get noticeResponseData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoticeStateCopyWith<NoticeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeStateCopyWith<$Res> {
  factory $NoticeStateCopyWith(
          NoticeState value, $Res Function(NoticeState) then) =
      _$NoticeStateCopyWithImpl<$Res, NoticeState>;
  @useResult
  $Res call({ResponseClassify<List<NoticeAllEntity?>> noticeResponseData});
}

/// @nodoc
class _$NoticeStateCopyWithImpl<$Res, $Val extends NoticeState>
    implements $NoticeStateCopyWith<$Res> {
  _$NoticeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeResponseData = null,
  }) {
    return _then(_value.copyWith(
      noticeResponseData: null == noticeResponseData
          ? _value.noticeResponseData
          : noticeResponseData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NoticeAllEntity?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeStateImplCopyWith<$Res>
    implements $NoticeStateCopyWith<$Res> {
  factory _$$NoticeStateImplCopyWith(
          _$NoticeStateImpl value, $Res Function(_$NoticeStateImpl) then) =
      __$$NoticeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseClassify<List<NoticeAllEntity?>> noticeResponseData});
}

/// @nodoc
class __$$NoticeStateImplCopyWithImpl<$Res>
    extends _$NoticeStateCopyWithImpl<$Res, _$NoticeStateImpl>
    implements _$$NoticeStateImplCopyWith<$Res> {
  __$$NoticeStateImplCopyWithImpl(
      _$NoticeStateImpl _value, $Res Function(_$NoticeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeResponseData = null,
  }) {
    return _then(_$NoticeStateImpl(
      noticeResponseData: null == noticeResponseData
          ? _value.noticeResponseData
          : noticeResponseData // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<NoticeAllEntity?>>,
    ));
  }
}

/// @nodoc

class _$NoticeStateImpl implements _NoticeState {
  const _$NoticeStateImpl({required this.noticeResponseData});

  @override
  final ResponseClassify<List<NoticeAllEntity?>> noticeResponseData;

  @override
  String toString() {
    return 'NoticeState(noticeResponseData: $noticeResponseData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeStateImpl &&
            (identical(other.noticeResponseData, noticeResponseData) ||
                other.noticeResponseData == noticeResponseData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noticeResponseData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeStateImplCopyWith<_$NoticeStateImpl> get copyWith =>
      __$$NoticeStateImplCopyWithImpl<_$NoticeStateImpl>(this, _$identity);
}

abstract class _NoticeState implements NoticeState {
  const factory _NoticeState(
      {required final ResponseClassify<List<NoticeAllEntity?>>
          noticeResponseData}) = _$NoticeStateImpl;

  @override
  ResponseClassify<List<NoticeAllEntity?>> get noticeResponseData;
  @override
  @JsonKey(ignore: true)
  _$$NoticeStateImplCopyWith<_$NoticeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
