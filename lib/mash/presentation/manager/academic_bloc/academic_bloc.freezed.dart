// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AcademicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClassDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClassDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClassDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClassDetails value) getClassDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClassDetails value)? getClassDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClassDetails value)? getClassDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicEventCopyWith<$Res> {
  factory $AcademicEventCopyWith(
          AcademicEvent value, $Res Function(AcademicEvent) then) =
      _$AcademicEventCopyWithImpl<$Res, AcademicEvent>;
}

/// @nodoc
class _$AcademicEventCopyWithImpl<$Res, $Val extends AcademicEvent>
    implements $AcademicEventCopyWith<$Res> {
  _$AcademicEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetClassDetailsImplCopyWith<$Res> {
  factory _$$GetClassDetailsImplCopyWith(_$GetClassDetailsImpl value,
          $Res Function(_$GetClassDetailsImpl) then) =
      __$$GetClassDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetClassDetailsImplCopyWithImpl<$Res>
    extends _$AcademicEventCopyWithImpl<$Res, _$GetClassDetailsImpl>
    implements _$$GetClassDetailsImplCopyWith<$Res> {
  __$$GetClassDetailsImplCopyWithImpl(
      _$GetClassDetailsImpl _value, $Res Function(_$GetClassDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetClassDetailsImpl implements _GetClassDetails {
  const _$GetClassDetailsImpl();

  @override
  String toString() {
    return 'AcademicEvent.getClassDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetClassDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClassDetails,
  }) {
    return getClassDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClassDetails,
  }) {
    return getClassDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClassDetails,
    required TResult orElse(),
  }) {
    if (getClassDetails != null) {
      return getClassDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClassDetails value) getClassDetails,
  }) {
    return getClassDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClassDetails value)? getClassDetails,
  }) {
    return getClassDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClassDetails value)? getClassDetails,
    required TResult orElse(),
  }) {
    if (getClassDetails != null) {
      return getClassDetails(this);
    }
    return orElse();
  }
}

abstract class _GetClassDetails implements AcademicEvent {
  const factory _GetClassDetails() = _$GetClassDetailsImpl;
}

/// @nodoc
mixin _$AcademicState {
  ResponseClassify<dynamic> get classDetails =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcademicStateCopyWith<AcademicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicStateCopyWith<$Res> {
  factory $AcademicStateCopyWith(
          AcademicState value, $Res Function(AcademicState) then) =
      _$AcademicStateCopyWithImpl<$Res, AcademicState>;
  @useResult
  $Res call({ResponseClassify<dynamic> classDetails});
}

/// @nodoc
class _$AcademicStateCopyWithImpl<$Res, $Val extends AcademicState>
    implements $AcademicStateCopyWith<$Res> {
  _$AcademicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classDetails = null,
  }) {
    return _then(_value.copyWith(
      classDetails: null == classDetails
          ? _value.classDetails
          : classDetails // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicStateImplCopyWith<$Res>
    implements $AcademicStateCopyWith<$Res> {
  factory _$$AcademicStateImplCopyWith(
          _$AcademicStateImpl value, $Res Function(_$AcademicStateImpl) then) =
      __$$AcademicStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseClassify<dynamic> classDetails});
}

/// @nodoc
class __$$AcademicStateImplCopyWithImpl<$Res>
    extends _$AcademicStateCopyWithImpl<$Res, _$AcademicStateImpl>
    implements _$$AcademicStateImplCopyWith<$Res> {
  __$$AcademicStateImplCopyWithImpl(
      _$AcademicStateImpl _value, $Res Function(_$AcademicStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classDetails = null,
  }) {
    return _then(_$AcademicStateImpl(
      classDetails: null == classDetails
          ? _value.classDetails
          : classDetails // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<dynamic>,
    ));
  }
}

/// @nodoc

class _$AcademicStateImpl implements _AcademicState {
  const _$AcademicStateImpl({required this.classDetails});

  @override
  final ResponseClassify<dynamic> classDetails;

  @override
  String toString() {
    return 'AcademicState(classDetails: $classDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicStateImpl &&
            (identical(other.classDetails, classDetails) ||
                other.classDetails == classDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicStateImplCopyWith<_$AcademicStateImpl> get copyWith =>
      __$$AcademicStateImplCopyWithImpl<_$AcademicStateImpl>(this, _$identity);
}

abstract class _AcademicState implements AcademicState {
  const factory _AcademicState(
          {required final ResponseClassify<dynamic> classDetails}) =
      _$AcademicStateImpl;

  @override
  ResponseClassify<dynamic> get classDetails;
  @override
  @JsonKey(ignore: true)
  _$$AcademicStateImplCopyWith<_$AcademicStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
