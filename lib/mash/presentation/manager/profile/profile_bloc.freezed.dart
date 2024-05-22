// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(StudentEntity student) selectSibling,
    required TResult Function() getSiblings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(StudentEntity student)? selectSibling,
    TResult? Function()? getSiblings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StudentEntity student)? selectSibling,
    TResult Function()? getSiblings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSibling value) selectSibling,
    required TResult Function(_GetSiblings value) getSiblings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSibling value)? selectSibling,
    TResult? Function(_GetSiblings value)? getSiblings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSibling value)? selectSibling,
    TResult Function(_GetSiblings value)? getSiblings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ProfileEvent.started()';
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
    required TResult Function(StudentEntity student) selectSibling,
    required TResult Function() getSiblings,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(StudentEntity student)? selectSibling,
    TResult? Function()? getSiblings,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StudentEntity student)? selectSibling,
    TResult Function()? getSiblings,
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
    required TResult Function(_SelectSibling value) selectSibling,
    required TResult Function(_GetSiblings value) getSiblings,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSibling value)? selectSibling,
    TResult? Function(_GetSiblings value)? getSiblings,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSibling value)? selectSibling,
    TResult Function(_GetSiblings value)? getSiblings,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectSiblingImplCopyWith<$Res> {
  factory _$$SelectSiblingImplCopyWith(
          _$SelectSiblingImpl value, $Res Function(_$SelectSiblingImpl) then) =
      __$$SelectSiblingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentEntity student});
}

/// @nodoc
class __$$SelectSiblingImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SelectSiblingImpl>
    implements _$$SelectSiblingImplCopyWith<$Res> {
  __$$SelectSiblingImplCopyWithImpl(
      _$SelectSiblingImpl _value, $Res Function(_$SelectSiblingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$SelectSiblingImpl(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentEntity,
    ));
  }
}

/// @nodoc

class _$SelectSiblingImpl implements _SelectSibling {
  const _$SelectSiblingImpl({required this.student});

  @override
  final StudentEntity student;

  @override
  String toString() {
    return 'ProfileEvent.selectSibling(student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSiblingImpl &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSiblingImplCopyWith<_$SelectSiblingImpl> get copyWith =>
      __$$SelectSiblingImplCopyWithImpl<_$SelectSiblingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(StudentEntity student) selectSibling,
    required TResult Function() getSiblings,
  }) {
    return selectSibling(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(StudentEntity student)? selectSibling,
    TResult? Function()? getSiblings,
  }) {
    return selectSibling?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StudentEntity student)? selectSibling,
    TResult Function()? getSiblings,
    required TResult orElse(),
  }) {
    if (selectSibling != null) {
      return selectSibling(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSibling value) selectSibling,
    required TResult Function(_GetSiblings value) getSiblings,
  }) {
    return selectSibling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSibling value)? selectSibling,
    TResult? Function(_GetSiblings value)? getSiblings,
  }) {
    return selectSibling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSibling value)? selectSibling,
    TResult Function(_GetSiblings value)? getSiblings,
    required TResult orElse(),
  }) {
    if (selectSibling != null) {
      return selectSibling(this);
    }
    return orElse();
  }
}

abstract class _SelectSibling implements ProfileEvent {
  const factory _SelectSibling({required final StudentEntity student}) =
      _$SelectSiblingImpl;

  StudentEntity get student;
  @JsonKey(ignore: true)
  _$$SelectSiblingImplCopyWith<_$SelectSiblingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSiblingsImplCopyWith<$Res> {
  factory _$$GetSiblingsImplCopyWith(
          _$GetSiblingsImpl value, $Res Function(_$GetSiblingsImpl) then) =
      __$$GetSiblingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSiblingsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetSiblingsImpl>
    implements _$$GetSiblingsImplCopyWith<$Res> {
  __$$GetSiblingsImplCopyWithImpl(
      _$GetSiblingsImpl _value, $Res Function(_$GetSiblingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSiblingsImpl implements _GetSiblings {
  const _$GetSiblingsImpl();

  @override
  String toString() {
    return 'ProfileEvent.getSiblings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSiblingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(StudentEntity student) selectSibling,
    required TResult Function() getSiblings,
  }) {
    return getSiblings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(StudentEntity student)? selectSibling,
    TResult? Function()? getSiblings,
  }) {
    return getSiblings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StudentEntity student)? selectSibling,
    TResult Function()? getSiblings,
    required TResult orElse(),
  }) {
    if (getSiblings != null) {
      return getSiblings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSibling value) selectSibling,
    required TResult Function(_GetSiblings value) getSiblings,
  }) {
    return getSiblings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSibling value)? selectSibling,
    TResult? Function(_GetSiblings value)? getSiblings,
  }) {
    return getSiblings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSibling value)? selectSibling,
    TResult Function(_GetSiblings value)? getSiblings,
    required TResult orElse(),
  }) {
    if (getSiblings != null) {
      return getSiblings(this);
    }
    return orElse();
  }
}

abstract class _GetSiblings implements ProfileEvent {
  const factory _GetSiblings() = _$GetSiblingsImpl;
}

/// @nodoc
mixin _$ProfileState {
  ResponseClassify<List<StudentEntity>>? get getSiblings =>
      throw _privateConstructorUsedError;
  StudentEntity? get selectedSibling => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ResponseClassify<List<StudentEntity>>? getSiblings,
      StudentEntity? selectedSibling});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSiblings = freezed,
    Object? selectedSibling = freezed,
  }) {
    return _then(_value.copyWith(
      getSiblings: freezed == getSiblings
          ? _value.getSiblings
          : getSiblings // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<StudentEntity>>?,
      selectedSibling: freezed == selectedSibling
          ? _value.selectedSibling
          : selectedSibling // ignore: cast_nullable_to_non_nullable
              as StudentEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<StudentEntity>>? getSiblings,
      StudentEntity? selectedSibling});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSiblings = freezed,
    Object? selectedSibling = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      getSiblings: freezed == getSiblings
          ? _value.getSiblings
          : getSiblings // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<StudentEntity>>?,
      selectedSibling: freezed == selectedSibling
          ? _value.selectedSibling
          : selectedSibling // ignore: cast_nullable_to_non_nullable
              as StudentEntity?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl({this.getSiblings, this.selectedSibling});

  @override
  final ResponseClassify<List<StudentEntity>>? getSiblings;
  @override
  final StudentEntity? selectedSibling;

  @override
  String toString() {
    return 'ProfileState(getSiblings: $getSiblings, selectedSibling: $selectedSibling)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.getSiblings, getSiblings) ||
                other.getSiblings == getSiblings) &&
            (identical(other.selectedSibling, selectedSibling) ||
                other.selectedSibling == selectedSibling));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getSiblings, selectedSibling);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ResponseClassify<List<StudentEntity>>? getSiblings,
      final StudentEntity? selectedSibling}) = _$ProfileStateImpl;

  @override
  ResponseClassify<List<StudentEntity>>? get getSiblings;
  @override
  StudentEntity? get selectedSibling;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
