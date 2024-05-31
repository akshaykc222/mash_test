// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_exam_time_table_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfflineExamTimeTableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOfflineExamTerms,
    required TResult Function(String termId) getOfflineExamTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOfflineExamTerms,
    TResult? Function(String termId)? getOfflineExamTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOfflineExamTerms,
    TResult Function(String termId)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineExamTimeTableEventCopyWith<$Res> {
  factory $OfflineExamTimeTableEventCopyWith(OfflineExamTimeTableEvent value,
          $Res Function(OfflineExamTimeTableEvent) then) =
      _$OfflineExamTimeTableEventCopyWithImpl<$Res, OfflineExamTimeTableEvent>;
}

/// @nodoc
class _$OfflineExamTimeTableEventCopyWithImpl<$Res,
        $Val extends OfflineExamTimeTableEvent>
    implements $OfflineExamTimeTableEventCopyWith<$Res> {
  _$OfflineExamTimeTableEventCopyWithImpl(this._value, this._then);

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
    extends _$OfflineExamTimeTableEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'OfflineExamTimeTableEvent.started()';
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
    required TResult Function() getOfflineExamTerms,
    required TResult Function(String termId) getOfflineExamTimeTable,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOfflineExamTerms,
    TResult? Function(String termId)? getOfflineExamTimeTable,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOfflineExamTerms,
    TResult Function(String termId)? getOfflineExamTimeTable,
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
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OfflineExamTimeTableEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOfflineExamTermsImplCopyWith<$Res> {
  factory _$$GetOfflineExamTermsImplCopyWith(_$GetOfflineExamTermsImpl value,
          $Res Function(_$GetOfflineExamTermsImpl) then) =
      __$$GetOfflineExamTermsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOfflineExamTermsImplCopyWithImpl<$Res>
    extends _$OfflineExamTimeTableEventCopyWithImpl<$Res,
        _$GetOfflineExamTermsImpl>
    implements _$$GetOfflineExamTermsImplCopyWith<$Res> {
  __$$GetOfflineExamTermsImplCopyWithImpl(_$GetOfflineExamTermsImpl _value,
      $Res Function(_$GetOfflineExamTermsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOfflineExamTermsImpl implements _GetOfflineExamTerms {
  const _$GetOfflineExamTermsImpl();

  @override
  String toString() {
    return 'OfflineExamTimeTableEvent.getOfflineExamTerms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOfflineExamTermsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOfflineExamTerms,
    required TResult Function(String termId) getOfflineExamTimeTable,
  }) {
    return getOfflineExamTerms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOfflineExamTerms,
    TResult? Function(String termId)? getOfflineExamTimeTable,
  }) {
    return getOfflineExamTerms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOfflineExamTerms,
    TResult Function(String termId)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTerms != null) {
      return getOfflineExamTerms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
  }) {
    return getOfflineExamTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
  }) {
    return getOfflineExamTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTerms != null) {
      return getOfflineExamTerms(this);
    }
    return orElse();
  }
}

abstract class _GetOfflineExamTerms implements OfflineExamTimeTableEvent {
  const factory _GetOfflineExamTerms() = _$GetOfflineExamTermsImpl;
}

/// @nodoc
abstract class _$$GetOfflineExamTimeTableImplCopyWith<$Res> {
  factory _$$GetOfflineExamTimeTableImplCopyWith(
          _$GetOfflineExamTimeTableImpl value,
          $Res Function(_$GetOfflineExamTimeTableImpl) then) =
      __$$GetOfflineExamTimeTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String termId});
}

/// @nodoc
class __$$GetOfflineExamTimeTableImplCopyWithImpl<$Res>
    extends _$OfflineExamTimeTableEventCopyWithImpl<$Res,
        _$GetOfflineExamTimeTableImpl>
    implements _$$GetOfflineExamTimeTableImplCopyWith<$Res> {
  __$$GetOfflineExamTimeTableImplCopyWithImpl(
      _$GetOfflineExamTimeTableImpl _value,
      $Res Function(_$GetOfflineExamTimeTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termId = null,
  }) {
    return _then(_$GetOfflineExamTimeTableImpl(
      termId: null == termId
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOfflineExamTimeTableImpl implements _GetOfflineExamTimeTable {
  const _$GetOfflineExamTimeTableImpl({required this.termId});

  @override
  final String termId;

  @override
  String toString() {
    return 'OfflineExamTimeTableEvent.getOfflineExamTimeTable(termId: $termId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOfflineExamTimeTableImpl &&
            (identical(other.termId, termId) || other.termId == termId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOfflineExamTimeTableImplCopyWith<_$GetOfflineExamTimeTableImpl>
      get copyWith => __$$GetOfflineExamTimeTableImplCopyWithImpl<
          _$GetOfflineExamTimeTableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOfflineExamTerms,
    required TResult Function(String termId) getOfflineExamTimeTable,
  }) {
    return getOfflineExamTimeTable(termId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOfflineExamTerms,
    TResult? Function(String termId)? getOfflineExamTimeTable,
  }) {
    return getOfflineExamTimeTable?.call(termId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOfflineExamTerms,
    TResult Function(String termId)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTimeTable != null) {
      return getOfflineExamTimeTable(termId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOfflineExamTerms value) getOfflineExamTerms,
    required TResult Function(_GetOfflineExamTimeTable value)
        getOfflineExamTimeTable,
  }) {
    return getOfflineExamTimeTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult? Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
  }) {
    return getOfflineExamTimeTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOfflineExamTerms value)? getOfflineExamTerms,
    TResult Function(_GetOfflineExamTimeTable value)? getOfflineExamTimeTable,
    required TResult orElse(),
  }) {
    if (getOfflineExamTimeTable != null) {
      return getOfflineExamTimeTable(this);
    }
    return orElse();
  }
}

abstract class _GetOfflineExamTimeTable implements OfflineExamTimeTableEvent {
  const factory _GetOfflineExamTimeTable({required final String termId}) =
      _$GetOfflineExamTimeTableImpl;

  String get termId;
  @JsonKey(ignore: true)
  _$$GetOfflineExamTimeTableImplCopyWith<_$GetOfflineExamTimeTableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OfflineExamTimeTableState {
  ResponseClassify<List<OfflineTimeTableTermEntity>>? get getOfflineExamTerms =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<OfflineExamTimeTableEntity>>?
      get getOfflineExamTimeTable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflineExamTimeTableStateCopyWith<OfflineExamTimeTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineExamTimeTableStateCopyWith<$Res> {
  factory $OfflineExamTimeTableStateCopyWith(OfflineExamTimeTableState value,
          $Res Function(OfflineExamTimeTableState) then) =
      _$OfflineExamTimeTableStateCopyWithImpl<$Res, OfflineExamTimeTableState>;
  @useResult
  $Res call(
      {ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms,
      ResponseClassify<List<OfflineExamTimeTableEntity>>?
          getOfflineExamTimeTable});
}

/// @nodoc
class _$OfflineExamTimeTableStateCopyWithImpl<$Res,
        $Val extends OfflineExamTimeTableState>
    implements $OfflineExamTimeTableStateCopyWith<$Res> {
  _$OfflineExamTimeTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOfflineExamTerms = freezed,
    Object? getOfflineExamTimeTable = freezed,
  }) {
    return _then(_value.copyWith(
      getOfflineExamTerms: freezed == getOfflineExamTerms
          ? _value.getOfflineExamTerms
          : getOfflineExamTerms // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineTimeTableTermEntity>>?,
      getOfflineExamTimeTable: freezed == getOfflineExamTimeTable
          ? _value.getOfflineExamTimeTable
          : getOfflineExamTimeTable // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineExamTimeTableEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineExamTimeTableStateImplCopyWith<$Res>
    implements $OfflineExamTimeTableStateCopyWith<$Res> {
  factory _$$OfflineExamTimeTableStateImplCopyWith(
          _$OfflineExamTimeTableStateImpl value,
          $Res Function(_$OfflineExamTimeTableStateImpl) then) =
      __$$OfflineExamTimeTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms,
      ResponseClassify<List<OfflineExamTimeTableEntity>>?
          getOfflineExamTimeTable});
}

/// @nodoc
class __$$OfflineExamTimeTableStateImplCopyWithImpl<$Res>
    extends _$OfflineExamTimeTableStateCopyWithImpl<$Res,
        _$OfflineExamTimeTableStateImpl>
    implements _$$OfflineExamTimeTableStateImplCopyWith<$Res> {
  __$$OfflineExamTimeTableStateImplCopyWithImpl(
      _$OfflineExamTimeTableStateImpl _value,
      $Res Function(_$OfflineExamTimeTableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOfflineExamTerms = freezed,
    Object? getOfflineExamTimeTable = freezed,
  }) {
    return _then(_$OfflineExamTimeTableStateImpl(
      getOfflineExamTerms: freezed == getOfflineExamTerms
          ? _value.getOfflineExamTerms
          : getOfflineExamTerms // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineTimeTableTermEntity>>?,
      getOfflineExamTimeTable: freezed == getOfflineExamTimeTable
          ? _value.getOfflineExamTimeTable
          : getOfflineExamTimeTable // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<OfflineExamTimeTableEntity>>?,
    ));
  }
}

/// @nodoc

class _$OfflineExamTimeTableStateImpl implements _OfflineExamTimeTableState {
  const _$OfflineExamTimeTableStateImpl(
      {required this.getOfflineExamTerms,
      required this.getOfflineExamTimeTable});

  @override
  final ResponseClassify<List<OfflineTimeTableTermEntity>>? getOfflineExamTerms;
  @override
  final ResponseClassify<List<OfflineExamTimeTableEntity>>?
      getOfflineExamTimeTable;

  @override
  String toString() {
    return 'OfflineExamTimeTableState(getOfflineExamTerms: $getOfflineExamTerms, getOfflineExamTimeTable: $getOfflineExamTimeTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineExamTimeTableStateImpl &&
            (identical(other.getOfflineExamTerms, getOfflineExamTerms) ||
                other.getOfflineExamTerms == getOfflineExamTerms) &&
            (identical(
                    other.getOfflineExamTimeTable, getOfflineExamTimeTable) ||
                other.getOfflineExamTimeTable == getOfflineExamTimeTable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getOfflineExamTerms, getOfflineExamTimeTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineExamTimeTableStateImplCopyWith<_$OfflineExamTimeTableStateImpl>
      get copyWith => __$$OfflineExamTimeTableStateImplCopyWithImpl<
          _$OfflineExamTimeTableStateImpl>(this, _$identity);
}

abstract class _OfflineExamTimeTableState implements OfflineExamTimeTableState {
  const factory _OfflineExamTimeTableState(
      {required final ResponseClassify<List<OfflineTimeTableTermEntity>>?
          getOfflineExamTerms,
      required final ResponseClassify<List<OfflineExamTimeTableEntity>>?
          getOfflineExamTimeTable}) = _$OfflineExamTimeTableStateImpl;

  @override
  ResponseClassify<List<OfflineTimeTableTermEntity>>? get getOfflineExamTerms;
  @override
  ResponseClassify<List<OfflineExamTimeTableEntity>>?
      get getOfflineExamTimeTable;
  @override
  @JsonKey(ignore: true)
  _$$OfflineExamTimeTableStateImplCopyWith<_$OfflineExamTimeTableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
