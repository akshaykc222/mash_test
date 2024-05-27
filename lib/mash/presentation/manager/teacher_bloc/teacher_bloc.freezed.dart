// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res, TeacherEvent>;
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res, $Val extends TeacherEvent>
    implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

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
    extends _$TeacherEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TeacherEvent.started()';
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
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
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
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TeacherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetRatingsImplCopyWith<$Res> {
  factory _$$GetRatingsImplCopyWith(
          _$GetRatingsImpl value, $Res Function(_$GetRatingsImpl) then) =
      __$$GetRatingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRatingsImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$GetRatingsImpl>
    implements _$$GetRatingsImplCopyWith<$Res> {
  __$$GetRatingsImplCopyWithImpl(
      _$GetRatingsImpl _value, $Res Function(_$GetRatingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRatingsImpl implements _GetRatings {
  const _$GetRatingsImpl();

  @override
  String toString() {
    return 'TeacherEvent.getRatings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRatingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
  }) {
    return getRatings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
  }) {
    return getRatings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    required TResult orElse(),
  }) {
    if (getRatings != null) {
      return getRatings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
  }) {
    return getRatings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
  }) {
    return getRatings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    required TResult orElse(),
  }) {
    if (getRatings != null) {
      return getRatings(this);
    }
    return orElse();
  }
}

abstract class _GetRatings implements TeacherEvent {
  const factory _GetRatings() = _$GetRatingsImpl;
}

/// @nodoc
abstract class _$$GetRatingQuestionsImplCopyWith<$Res> {
  factory _$$GetRatingQuestionsImplCopyWith(_$GetRatingQuestionsImpl value,
          $Res Function(_$GetRatingQuestionsImpl) then) =
      __$$GetRatingQuestionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRatingQuestionsImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$GetRatingQuestionsImpl>
    implements _$$GetRatingQuestionsImplCopyWith<$Res> {
  __$$GetRatingQuestionsImplCopyWithImpl(_$GetRatingQuestionsImpl _value,
      $Res Function(_$GetRatingQuestionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRatingQuestionsImpl implements _GetRatingQuestions {
  const _$GetRatingQuestionsImpl();

  @override
  String toString() {
    return 'TeacherEvent.getRatingQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRatingQuestionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRatings,
    required TResult Function() getRatingQuestions,
  }) {
    return getRatingQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRatings,
    TResult? Function()? getRatingQuestions,
  }) {
    return getRatingQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRatings,
    TResult Function()? getRatingQuestions,
    required TResult orElse(),
  }) {
    if (getRatingQuestions != null) {
      return getRatingQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRatings value) getRatings,
    required TResult Function(_GetRatingQuestions value) getRatingQuestions,
  }) {
    return getRatingQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRatings value)? getRatings,
    TResult? Function(_GetRatingQuestions value)? getRatingQuestions,
  }) {
    return getRatingQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRatings value)? getRatings,
    TResult Function(_GetRatingQuestions value)? getRatingQuestions,
    required TResult orElse(),
  }) {
    if (getRatingQuestions != null) {
      return getRatingQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetRatingQuestions implements TeacherEvent {
  const factory _GetRatingQuestions() = _$GetRatingQuestionsImpl;
}

/// @nodoc
mixin _$TeacherState {
  ResponseClassify<List<TeacherRatingEntity>>? get getTeacherRating =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<TeacherRatingQuestionsEntity>>?
      get getTeacherRatingQuestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call(
      {ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,
      ResponseClassify<List<TeacherRatingQuestionsEntity>>?
          getTeacherRatingQuestions});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTeacherRating = freezed,
    Object? getTeacherRatingQuestions = freezed,
  }) {
    return _then(_value.copyWith(
      getTeacherRating: freezed == getTeacherRating
          ? _value.getTeacherRating
          : getTeacherRating // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingEntity>>?,
      getTeacherRatingQuestions: freezed == getTeacherRatingQuestions
          ? _value.getTeacherRatingQuestions
          : getTeacherRatingQuestions // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingQuestionsEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherStateImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$TeacherStateImplCopyWith(
          _$TeacherStateImpl value, $Res Function(_$TeacherStateImpl) then) =
      __$$TeacherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,
      ResponseClassify<List<TeacherRatingQuestionsEntity>>?
          getTeacherRatingQuestions});
}

/// @nodoc
class __$$TeacherStateImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$TeacherStateImpl>
    implements _$$TeacherStateImplCopyWith<$Res> {
  __$$TeacherStateImplCopyWithImpl(
      _$TeacherStateImpl _value, $Res Function(_$TeacherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTeacherRating = freezed,
    Object? getTeacherRatingQuestions = freezed,
  }) {
    return _then(_$TeacherStateImpl(
      getTeacherRating: freezed == getTeacherRating
          ? _value.getTeacherRating
          : getTeacherRating // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingEntity>>?,
      getTeacherRatingQuestions: freezed == getTeacherRatingQuestions
          ? _value.getTeacherRatingQuestions
          : getTeacherRatingQuestions // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<TeacherRatingQuestionsEntity>>?,
    ));
  }
}

/// @nodoc

class _$TeacherStateImpl implements _TeacherState {
  const _$TeacherStateImpl(
      {this.getTeacherRating, this.getTeacherRatingQuestions});

  @override
  final ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating;
  @override
  final ResponseClassify<List<TeacherRatingQuestionsEntity>>?
      getTeacherRatingQuestions;

  @override
  String toString() {
    return 'TeacherState(getTeacherRating: $getTeacherRating, getTeacherRatingQuestions: $getTeacherRatingQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherStateImpl &&
            (identical(other.getTeacherRating, getTeacherRating) ||
                other.getTeacherRating == getTeacherRating) &&
            (identical(other.getTeacherRatingQuestions,
                    getTeacherRatingQuestions) ||
                other.getTeacherRatingQuestions == getTeacherRatingQuestions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getTeacherRating, getTeacherRatingQuestions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      __$$TeacherStateImplCopyWithImpl<_$TeacherStateImpl>(this, _$identity);
}

abstract class _TeacherState implements TeacherState {
  const factory _TeacherState(
      {final ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,
      final ResponseClassify<List<TeacherRatingQuestionsEntity>>?
          getTeacherRatingQuestions}) = _$TeacherStateImpl;

  @override
  ResponseClassify<List<TeacherRatingEntity>>? get getTeacherRating;
  @override
  ResponseClassify<List<TeacherRatingQuestionsEntity>>?
      get getTeacherRatingQuestions;
  @override
  @JsonKey(ignore: true)
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
