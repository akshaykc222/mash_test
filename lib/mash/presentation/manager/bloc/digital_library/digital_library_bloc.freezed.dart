// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digital_library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DigitalLibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalLibraryEventCopyWith<$Res> {
  factory $DigitalLibraryEventCopyWith(
          DigitalLibraryEvent value, $Res Function(DigitalLibraryEvent) then) =
      _$DigitalLibraryEventCopyWithImpl<$Res, DigitalLibraryEvent>;
}

/// @nodoc
class _$DigitalLibraryEventCopyWithImpl<$Res, $Val extends DigitalLibraryEvent>
    implements $DigitalLibraryEventCopyWith<$Res> {
  _$DigitalLibraryEventCopyWithImpl(this._value, this._then);

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
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DigitalLibraryEvent.started'));
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
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
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
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DigitalLibraryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetClassesImplCopyWith<$Res> {
  factory _$$GetClassesImplCopyWith(
          _$GetClassesImpl value, $Res Function(_$GetClassesImpl) then) =
      __$$GetClassesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetClassesImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetClassesImpl>
    implements _$$GetClassesImplCopyWith<$Res> {
  __$$GetClassesImplCopyWithImpl(
      _$GetClassesImpl _value, $Res Function(_$GetClassesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetClassesImpl with DiagnosticableTreeMixin implements _GetClasses {
  const _$GetClassesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getClasses()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getClasses'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetClassesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getClasses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getClasses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements DigitalLibraryEvent {
  const factory _GetClasses() = _$GetClassesImpl;
}

/// @nodoc
abstract class _$$GetResearchImplCopyWith<$Res> {
  factory _$$GetResearchImplCopyWith(
          _$GetResearchImpl value, $Res Function(_$GetResearchImpl) then) =
      __$$GetResearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetResearchImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetResearchImpl>
    implements _$$GetResearchImplCopyWith<$Res> {
  __$$GetResearchImplCopyWithImpl(
      _$GetResearchImpl _value, $Res Function(_$GetResearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetResearchImpl with DiagnosticableTreeMixin implements _GetResearch {
  const _$GetResearchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getResearch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getResearch'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetResearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getResearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getResearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getResearch != null) {
      return getResearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getResearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getResearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getResearch != null) {
      return getResearch(this);
    }
    return orElse();
  }
}

abstract class _GetResearch implements DigitalLibraryEvent {
  const factory _GetResearch() = _$GetResearchImpl;
}

/// @nodoc
abstract class _$$GetTypesImplCopyWith<$Res> {
  factory _$$GetTypesImplCopyWith(
          _$GetTypesImpl value, $Res Function(_$GetTypesImpl) then) =
      __$$GetTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String moduleName, String pJson});
}

/// @nodoc
class __$$GetTypesImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetTypesImpl>
    implements _$$GetTypesImplCopyWith<$Res> {
  __$$GetTypesImplCopyWithImpl(
      _$GetTypesImpl _value, $Res Function(_$GetTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleName = null,
    Object? pJson = null,
  }) {
    return _then(_$GetTypesImpl(
      null == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String,
      null == pJson
          ? _value.pJson
          : pJson // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTypesImpl with DiagnosticableTreeMixin implements _GetTypes {
  const _$GetTypesImpl(this.moduleName, this.pJson);

  @override
  final String moduleName;
  @override
  final String pJson;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getTypes(moduleName: $moduleName, pJson: $pJson)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getTypes'))
      ..add(DiagnosticsProperty('moduleName', moduleName))
      ..add(DiagnosticsProperty('pJson', pJson));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTypesImpl &&
            (identical(other.moduleName, moduleName) ||
                other.moduleName == moduleName) &&
            (identical(other.pJson, pJson) || other.pJson == pJson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moduleName, pJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTypesImplCopyWith<_$GetTypesImpl> get copyWith =>
      __$$GetTypesImplCopyWithImpl<_$GetTypesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getTypes(moduleName, pJson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getTypes?.call(moduleName, pJson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getTypes != null) {
      return getTypes(moduleName, pJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getTypes != null) {
      return getTypes(this);
    }
    return orElse();
  }
}

abstract class _GetTypes implements DigitalLibraryEvent {
  const factory _GetTypes(final String moduleName, final String pJson) =
      _$GetTypesImpl;

  String get moduleName;
  String get pJson;
  @JsonKey(ignore: true)
  _$$GetTypesImplCopyWith<_$GetTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectMediumImplCopyWith<$Res> {
  factory _$$SelectMediumImplCopyWith(
          _$SelectMediumImpl value, $Res Function(_$SelectMediumImpl) then) =
      __$$SelectMediumImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AcademicTypeEntity? selected});
}

/// @nodoc
class __$$SelectMediumImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectMediumImpl>
    implements _$$SelectMediumImplCopyWith<$Res> {
  __$$SelectMediumImplCopyWithImpl(
      _$SelectMediumImpl _value, $Res Function(_$SelectMediumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$SelectMediumImpl(
      freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
    ));
  }
}

/// @nodoc

class _$SelectMediumImpl with DiagnosticableTreeMixin implements _SelectMedium {
  const _$SelectMediumImpl(this.selected);

  @override
  final AcademicTypeEntity? selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectMedium(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.selectMedium'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMediumImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMediumImplCopyWith<_$SelectMediumImpl> get copyWith =>
      __$$SelectMediumImplCopyWithImpl<_$SelectMediumImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectMedium(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectMedium?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectMedium != null) {
      return selectMedium(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectMedium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectMedium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectMedium != null) {
      return selectMedium(this);
    }
    return orElse();
  }
}

abstract class _SelectMedium implements DigitalLibraryEvent {
  const factory _SelectMedium(final AcademicTypeEntity? selected) =
      _$SelectMediumImpl;

  AcademicTypeEntity? get selected;
  @JsonKey(ignore: true)
  _$$SelectMediumImplCopyWith<_$SelectMediumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectSubCatImplCopyWith<$Res> {
  factory _$$SelectSubCatImplCopyWith(
          _$SelectSubCatImpl value, $Res Function(_$SelectSubCatImpl) then) =
      __$$SelectSubCatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AcademicTypeEntity? selected});
}

/// @nodoc
class __$$SelectSubCatImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectSubCatImpl>
    implements _$$SelectSubCatImplCopyWith<$Res> {
  __$$SelectSubCatImplCopyWithImpl(
      _$SelectSubCatImpl _value, $Res Function(_$SelectSubCatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$SelectSubCatImpl(
      freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
    ));
  }
}

/// @nodoc

class _$SelectSubCatImpl with DiagnosticableTreeMixin implements _SelectSubCat {
  const _$SelectSubCatImpl(this.selected);

  @override
  final AcademicTypeEntity? selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectSubCat(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.selectSubCat'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSubCatImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSubCatImplCopyWith<_$SelectSubCatImpl> get copyWith =>
      __$$SelectSubCatImplCopyWithImpl<_$SelectSubCatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectSubCat(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectSubCat?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectSubCat != null) {
      return selectSubCat(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectSubCat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectSubCat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectSubCat != null) {
      return selectSubCat(this);
    }
    return orElse();
  }
}

abstract class _SelectSubCat implements DigitalLibraryEvent {
  const factory _SelectSubCat(final AcademicTypeEntity? selected) =
      _$SelectSubCatImpl;

  AcademicTypeEntity? get selected;
  @JsonKey(ignore: true)
  _$$SelectSubCatImplCopyWith<_$SelectSubCatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNonAcademicImplCopyWith<$Res> {
  factory _$$GetNonAcademicImplCopyWith(_$GetNonAcademicImpl value,
          $Res Function(_$GetNonAcademicImpl) then) =
      __$$GetNonAcademicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? typeId, String? catId, String? subId});
}

/// @nodoc
class __$$GetNonAcademicImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetNonAcademicImpl>
    implements _$$GetNonAcademicImplCopyWith<$Res> {
  __$$GetNonAcademicImplCopyWithImpl(
      _$GetNonAcademicImpl _value, $Res Function(_$GetNonAcademicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? catId = freezed,
    Object? subId = freezed,
  }) {
    return _then(_$GetNonAcademicImpl(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetNonAcademicImpl
    with DiagnosticableTreeMixin
    implements _GetNonAcademic {
  const _$GetNonAcademicImpl({this.typeId, this.catId, this.subId});

  @override
  final String? typeId;
  @override
  final String? catId;
  @override
  final String? subId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getNonAcademic(typeId: $typeId, catId: $catId, subId: $subId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getNonAcademic'))
      ..add(DiagnosticsProperty('typeId', typeId))
      ..add(DiagnosticsProperty('catId', catId))
      ..add(DiagnosticsProperty('subId', subId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNonAcademicImpl &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.subId, subId) || other.subId == subId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeId, catId, subId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNonAcademicImplCopyWith<_$GetNonAcademicImpl> get copyWith =>
      __$$GetNonAcademicImplCopyWithImpl<_$GetNonAcademicImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getNonAcademic(typeId, catId, subId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getNonAcademic?.call(typeId, catId, subId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getNonAcademic != null) {
      return getNonAcademic(typeId, catId, subId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getNonAcademic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getNonAcademic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getNonAcademic != null) {
      return getNonAcademic(this);
    }
    return orElse();
  }
}

abstract class _GetNonAcademic implements DigitalLibraryEvent {
  const factory _GetNonAcademic(
      {final String? typeId,
      final String? catId,
      final String? subId}) = _$GetNonAcademicImpl;

  String? get typeId;
  String? get catId;
  String? get subId;
  @JsonKey(ignore: true)
  _$$GetNonAcademicImplCopyWith<_$GetNonAcademicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectNonAcademicTypeImplCopyWith<$Res> {
  factory _$$SelectNonAcademicTypeImplCopyWith(
          _$SelectNonAcademicTypeImpl value,
          $Res Function(_$SelectNonAcademicTypeImpl) then) =
      __$$SelectNonAcademicTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NonAcademicTypes selected});
}

/// @nodoc
class __$$SelectNonAcademicTypeImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectNonAcademicTypeImpl>
    implements _$$SelectNonAcademicTypeImplCopyWith<$Res> {
  __$$SelectNonAcademicTypeImplCopyWithImpl(_$SelectNonAcademicTypeImpl _value,
      $Res Function(_$SelectNonAcademicTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectNonAcademicTypeImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as NonAcademicTypes,
    ));
  }
}

/// @nodoc

class _$SelectNonAcademicTypeImpl
    with DiagnosticableTreeMixin
    implements _SelectNonAcademicType {
  const _$SelectNonAcademicTypeImpl(this.selected);

  @override
  final NonAcademicTypes selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectNonAcademicType(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DigitalLibraryEvent.selectNonAcademicType'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectNonAcademicTypeImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectNonAcademicTypeImplCopyWith<_$SelectNonAcademicTypeImpl>
      get copyWith => __$$SelectNonAcademicTypeImplCopyWithImpl<
          _$SelectNonAcademicTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectNonAcademicType(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectNonAcademicType?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectNonAcademicType != null) {
      return selectNonAcademicType(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectNonAcademicType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectNonAcademicType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectNonAcademicType != null) {
      return selectNonAcademicType(this);
    }
    return orElse();
  }
}

abstract class _SelectNonAcademicType implements DigitalLibraryEvent {
  const factory _SelectNonAcademicType(final NonAcademicTypes selected) =
      _$SelectNonAcademicTypeImpl;

  NonAcademicTypes get selected;
  @JsonKey(ignore: true)
  _$$SelectNonAcademicTypeImplCopyWith<_$SelectNonAcademicTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLibraryImplCopyWith<$Res> {
  factory _$$GetLibraryImplCopyWith(
          _$GetLibraryImpl value, $Res Function(_$GetLibraryImpl) then) =
      __$$GetLibraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DigitalLibraryRequest request});
}

/// @nodoc
class __$$GetLibraryImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$GetLibraryImpl>
    implements _$$GetLibraryImplCopyWith<$Res> {
  __$$GetLibraryImplCopyWithImpl(
      _$GetLibraryImpl _value, $Res Function(_$GetLibraryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetLibraryImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DigitalLibraryRequest,
    ));
  }
}

/// @nodoc

class _$GetLibraryImpl with DiagnosticableTreeMixin implements _GetLibrary {
  const _$GetLibraryImpl(this.request);

  @override
  final DigitalLibraryRequest request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.getLibrary(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.getLibrary'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLibraryImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLibraryImplCopyWith<_$GetLibraryImpl> get copyWith =>
      __$$GetLibraryImplCopyWithImpl<_$GetLibraryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return getLibrary(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return getLibrary?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (getLibrary != null) {
      return getLibrary(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return getLibrary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return getLibrary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (getLibrary != null) {
      return getLibrary(this);
    }
    return orElse();
  }
}

abstract class _GetLibrary implements DigitalLibraryEvent {
  const factory _GetLibrary(final DigitalLibraryRequest request) =
      _$GetLibraryImpl;

  DigitalLibraryRequest get request;
  @JsonKey(ignore: true)
  _$$GetLibraryImplCopyWith<_$GetLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectClassImplCopyWith<$Res> {
  factory _$$SelectClassImplCopyWith(
          _$SelectClassImpl value, $Res Function(_$SelectClassImpl) then) =
      __$$SelectClassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClassDetailsEntity selected});
}

/// @nodoc
class __$$SelectClassImplCopyWithImpl<$Res>
    extends _$DigitalLibraryEventCopyWithImpl<$Res, _$SelectClassImpl>
    implements _$$SelectClassImplCopyWith<$Res> {
  __$$SelectClassImplCopyWithImpl(
      _$SelectClassImpl _value, $Res Function(_$SelectClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectClassImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ClassDetailsEntity,
    ));
  }
}

/// @nodoc

class _$SelectClassImpl with DiagnosticableTreeMixin implements _SelectClass {
  const _$SelectClassImpl(this.selected);

  @override
  final ClassDetailsEntity selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryEvent.selectClass(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryEvent.selectClass'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectClassImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectClassImplCopyWith<_$SelectClassImpl> get copyWith =>
      __$$SelectClassImplCopyWithImpl<_$SelectClassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getClasses,
    required TResult Function() getResearch,
    required TResult Function(String moduleName, String pJson) getTypes,
    required TResult Function(AcademicTypeEntity? selected) selectMedium,
    required TResult Function(AcademicTypeEntity? selected) selectSubCat,
    required TResult Function(String? typeId, String? catId, String? subId)
        getNonAcademic,
    required TResult Function(NonAcademicTypes selected) selectNonAcademicType,
    required TResult Function(DigitalLibraryRequest request) getLibrary,
    required TResult Function(ClassDetailsEntity selected) selectClass,
  }) {
    return selectClass(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getClasses,
    TResult? Function()? getResearch,
    TResult? Function(String moduleName, String pJson)? getTypes,
    TResult? Function(AcademicTypeEntity? selected)? selectMedium,
    TResult? Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult? Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult? Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult? Function(DigitalLibraryRequest request)? getLibrary,
    TResult? Function(ClassDetailsEntity selected)? selectClass,
  }) {
    return selectClass?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getClasses,
    TResult Function()? getResearch,
    TResult Function(String moduleName, String pJson)? getTypes,
    TResult Function(AcademicTypeEntity? selected)? selectMedium,
    TResult Function(AcademicTypeEntity? selected)? selectSubCat,
    TResult Function(String? typeId, String? catId, String? subId)?
        getNonAcademic,
    TResult Function(NonAcademicTypes selected)? selectNonAcademicType,
    TResult Function(DigitalLibraryRequest request)? getLibrary,
    TResult Function(ClassDetailsEntity selected)? selectClass,
    required TResult orElse(),
  }) {
    if (selectClass != null) {
      return selectClass(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetResearch value) getResearch,
    required TResult Function(_GetTypes value) getTypes,
    required TResult Function(_SelectMedium value) selectMedium,
    required TResult Function(_SelectSubCat value) selectSubCat,
    required TResult Function(_GetNonAcademic value) getNonAcademic,
    required TResult Function(_SelectNonAcademicType value)
        selectNonAcademicType,
    required TResult Function(_GetLibrary value) getLibrary,
    required TResult Function(_SelectClass value) selectClass,
  }) {
    return selectClass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetResearch value)? getResearch,
    TResult? Function(_GetTypes value)? getTypes,
    TResult? Function(_SelectMedium value)? selectMedium,
    TResult? Function(_SelectSubCat value)? selectSubCat,
    TResult? Function(_GetNonAcademic value)? getNonAcademic,
    TResult? Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult? Function(_GetLibrary value)? getLibrary,
    TResult? Function(_SelectClass value)? selectClass,
  }) {
    return selectClass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetResearch value)? getResearch,
    TResult Function(_GetTypes value)? getTypes,
    TResult Function(_SelectMedium value)? selectMedium,
    TResult Function(_SelectSubCat value)? selectSubCat,
    TResult Function(_GetNonAcademic value)? getNonAcademic,
    TResult Function(_SelectNonAcademicType value)? selectNonAcademicType,
    TResult Function(_GetLibrary value)? getLibrary,
    TResult Function(_SelectClass value)? selectClass,
    required TResult orElse(),
  }) {
    if (selectClass != null) {
      return selectClass(this);
    }
    return orElse();
  }
}

abstract class _SelectClass implements DigitalLibraryEvent {
  const factory _SelectClass(final ClassDetailsEntity selected) =
      _$SelectClassImpl;

  ClassDetailsEntity get selected;
  @JsonKey(ignore: true)
  _$$SelectClassImplCopyWith<_$SelectClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DigitalLibraryState {
  ResponseClassify<List<ClassDetailsEntity>>? get getClasses =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<DigitalLibraryEntity>>? get getLibrary =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AcademicTypeEntity>>? get getTypes =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AcademicTypeEntity>>? get subCats =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<AcademicTypeEntity>>? get mediums =>
      throw _privateConstructorUsedError;
  AcademicTypeEntity? get selectedSubCat => throw _privateConstructorUsedError;
  AcademicTypeEntity? get selectedMedium => throw _privateConstructorUsedError;
  NonAcademicTypes get selectedNonAcademic =>
      throw _privateConstructorUsedError;
  ClassDetailsEntity? get selectedClass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DigitalLibraryStateCopyWith<DigitalLibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalLibraryStateCopyWith<$Res> {
  factory $DigitalLibraryStateCopyWith(
          DigitalLibraryState value, $Res Function(DigitalLibraryState) then) =
      _$DigitalLibraryStateCopyWithImpl<$Res, DigitalLibraryState>;
  @useResult
  $Res call(
      {ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      ResponseClassify<List<AcademicTypeEntity>>? subCats,
      ResponseClassify<List<AcademicTypeEntity>>? mediums,
      AcademicTypeEntity? selectedSubCat,
      AcademicTypeEntity? selectedMedium,
      NonAcademicTypes selectedNonAcademic,
      ClassDetailsEntity? selectedClass});
}

/// @nodoc
class _$DigitalLibraryStateCopyWithImpl<$Res, $Val extends DigitalLibraryState>
    implements $DigitalLibraryStateCopyWith<$Res> {
  _$DigitalLibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClasses = freezed,
    Object? getLibrary = freezed,
    Object? getTypes = freezed,
    Object? subCats = freezed,
    Object? mediums = freezed,
    Object? selectedSubCat = freezed,
    Object? selectedMedium = freezed,
    Object? selectedNonAcademic = null,
    Object? selectedClass = freezed,
  }) {
    return _then(_value.copyWith(
      getClasses: freezed == getClasses
          ? _value.getClasses
          : getClasses // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<ClassDetailsEntity>>?,
      getLibrary: freezed == getLibrary
          ? _value.getLibrary
          : getLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DigitalLibraryEntity>>?,
      getTypes: freezed == getTypes
          ? _value.getTypes
          : getTypes // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      subCats: freezed == subCats
          ? _value.subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      mediums: freezed == mediums
          ? _value.mediums
          : mediums // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      selectedSubCat: freezed == selectedSubCat
          ? _value.selectedSubCat
          : selectedSubCat // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      selectedMedium: freezed == selectedMedium
          ? _value.selectedMedium
          : selectedMedium // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      selectedNonAcademic: null == selectedNonAcademic
          ? _value.selectedNonAcademic
          : selectedNonAcademic // ignore: cast_nullable_to_non_nullable
              as NonAcademicTypes,
      selectedClass: freezed == selectedClass
          ? _value.selectedClass
          : selectedClass // ignore: cast_nullable_to_non_nullable
              as ClassDetailsEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DigitalLibraryStateImplCopyWith<$Res>
    implements $DigitalLibraryStateCopyWith<$Res> {
  factory _$$DigitalLibraryStateImplCopyWith(_$DigitalLibraryStateImpl value,
          $Res Function(_$DigitalLibraryStateImpl) then) =
      __$$DigitalLibraryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      ResponseClassify<List<AcademicTypeEntity>>? subCats,
      ResponseClassify<List<AcademicTypeEntity>>? mediums,
      AcademicTypeEntity? selectedSubCat,
      AcademicTypeEntity? selectedMedium,
      NonAcademicTypes selectedNonAcademic,
      ClassDetailsEntity? selectedClass});
}

/// @nodoc
class __$$DigitalLibraryStateImplCopyWithImpl<$Res>
    extends _$DigitalLibraryStateCopyWithImpl<$Res, _$DigitalLibraryStateImpl>
    implements _$$DigitalLibraryStateImplCopyWith<$Res> {
  __$$DigitalLibraryStateImplCopyWithImpl(_$DigitalLibraryStateImpl _value,
      $Res Function(_$DigitalLibraryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClasses = freezed,
    Object? getLibrary = freezed,
    Object? getTypes = freezed,
    Object? subCats = freezed,
    Object? mediums = freezed,
    Object? selectedSubCat = freezed,
    Object? selectedMedium = freezed,
    Object? selectedNonAcademic = null,
    Object? selectedClass = freezed,
  }) {
    return _then(_$DigitalLibraryStateImpl(
      getClasses: freezed == getClasses
          ? _value.getClasses
          : getClasses // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<ClassDetailsEntity>>?,
      getLibrary: freezed == getLibrary
          ? _value.getLibrary
          : getLibrary // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<DigitalLibraryEntity>>?,
      getTypes: freezed == getTypes
          ? _value.getTypes
          : getTypes // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      subCats: freezed == subCats
          ? _value.subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      mediums: freezed == mediums
          ? _value.mediums
          : mediums // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<AcademicTypeEntity>>?,
      selectedSubCat: freezed == selectedSubCat
          ? _value.selectedSubCat
          : selectedSubCat // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      selectedMedium: freezed == selectedMedium
          ? _value.selectedMedium
          : selectedMedium // ignore: cast_nullable_to_non_nullable
              as AcademicTypeEntity?,
      selectedNonAcademic: null == selectedNonAcademic
          ? _value.selectedNonAcademic
          : selectedNonAcademic // ignore: cast_nullable_to_non_nullable
              as NonAcademicTypes,
      selectedClass: freezed == selectedClass
          ? _value.selectedClass
          : selectedClass // ignore: cast_nullable_to_non_nullable
              as ClassDetailsEntity?,
    ));
  }
}

/// @nodoc

class _$DigitalLibraryStateImpl
    with DiagnosticableTreeMixin
    implements _DigitalLibraryState {
  const _$DigitalLibraryStateImpl(
      {this.getClasses,
      this.getLibrary,
      this.getTypes,
      this.subCats,
      this.mediums,
      this.selectedSubCat,
      this.selectedMedium,
      this.selectedNonAcademic = NonAcademicTypes.all,
      this.selectedClass});

  @override
  final ResponseClassify<List<ClassDetailsEntity>>? getClasses;
  @override
  final ResponseClassify<List<DigitalLibraryEntity>>? getLibrary;
  @override
  final ResponseClassify<List<AcademicTypeEntity>>? getTypes;
  @override
  final ResponseClassify<List<AcademicTypeEntity>>? subCats;
  @override
  final ResponseClassify<List<AcademicTypeEntity>>? mediums;
  @override
  final AcademicTypeEntity? selectedSubCat;
  @override
  final AcademicTypeEntity? selectedMedium;
  @override
  @JsonKey()
  final NonAcademicTypes selectedNonAcademic;
  @override
  final ClassDetailsEntity? selectedClass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DigitalLibraryState(getClasses: $getClasses, getLibrary: $getLibrary, getTypes: $getTypes, subCats: $subCats, mediums: $mediums, selectedSubCat: $selectedSubCat, selectedMedium: $selectedMedium, selectedNonAcademic: $selectedNonAcademic, selectedClass: $selectedClass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DigitalLibraryState'))
      ..add(DiagnosticsProperty('getClasses', getClasses))
      ..add(DiagnosticsProperty('getLibrary', getLibrary))
      ..add(DiagnosticsProperty('getTypes', getTypes))
      ..add(DiagnosticsProperty('subCats', subCats))
      ..add(DiagnosticsProperty('mediums', mediums))
      ..add(DiagnosticsProperty('selectedSubCat', selectedSubCat))
      ..add(DiagnosticsProperty('selectedMedium', selectedMedium))
      ..add(DiagnosticsProperty('selectedNonAcademic', selectedNonAcademic))
      ..add(DiagnosticsProperty('selectedClass', selectedClass));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigitalLibraryStateImpl &&
            (identical(other.getClasses, getClasses) ||
                other.getClasses == getClasses) &&
            (identical(other.getLibrary, getLibrary) ||
                other.getLibrary == getLibrary) &&
            (identical(other.getTypes, getTypes) ||
                other.getTypes == getTypes) &&
            (identical(other.subCats, subCats) || other.subCats == subCats) &&
            (identical(other.mediums, mediums) || other.mediums == mediums) &&
            (identical(other.selectedSubCat, selectedSubCat) ||
                other.selectedSubCat == selectedSubCat) &&
            (identical(other.selectedMedium, selectedMedium) ||
                other.selectedMedium == selectedMedium) &&
            (identical(other.selectedNonAcademic, selectedNonAcademic) ||
                other.selectedNonAcademic == selectedNonAcademic) &&
            (identical(other.selectedClass, selectedClass) ||
                other.selectedClass == selectedClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getClasses,
      getLibrary,
      getTypes,
      subCats,
      mediums,
      selectedSubCat,
      selectedMedium,
      selectedNonAcademic,
      selectedClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DigitalLibraryStateImplCopyWith<_$DigitalLibraryStateImpl> get copyWith =>
      __$$DigitalLibraryStateImplCopyWithImpl<_$DigitalLibraryStateImpl>(
          this, _$identity);
}

abstract class _DigitalLibraryState implements DigitalLibraryState {
  const factory _DigitalLibraryState(
      {final ResponseClassify<List<ClassDetailsEntity>>? getClasses,
      final ResponseClassify<List<DigitalLibraryEntity>>? getLibrary,
      final ResponseClassify<List<AcademicTypeEntity>>? getTypes,
      final ResponseClassify<List<AcademicTypeEntity>>? subCats,
      final ResponseClassify<List<AcademicTypeEntity>>? mediums,
      final AcademicTypeEntity? selectedSubCat,
      final AcademicTypeEntity? selectedMedium,
      final NonAcademicTypes selectedNonAcademic,
      final ClassDetailsEntity? selectedClass}) = _$DigitalLibraryStateImpl;

  @override
  ResponseClassify<List<ClassDetailsEntity>>? get getClasses;
  @override
  ResponseClassify<List<DigitalLibraryEntity>>? get getLibrary;
  @override
  ResponseClassify<List<AcademicTypeEntity>>? get getTypes;
  @override
  ResponseClassify<List<AcademicTypeEntity>>? get subCats;
  @override
  ResponseClassify<List<AcademicTypeEntity>>? get mediums;
  @override
  AcademicTypeEntity? get selectedSubCat;
  @override
  AcademicTypeEntity? get selectedMedium;
  @override
  NonAcademicTypes get selectedNonAcademic;
  @override
  ClassDetailsEntity? get selectedClass;
  @override
  @JsonKey(ignore: true)
  _$$DigitalLibraryStateImplCopyWith<_$DigitalLibraryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
