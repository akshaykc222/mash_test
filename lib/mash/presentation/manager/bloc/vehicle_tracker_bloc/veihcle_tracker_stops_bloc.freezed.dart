// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veihcle_tracker_stops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleTrackerStopsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initMap,
    required TResult Function() getBusLocation,
    required TResult Function(Set<Polyline> polyLine) addPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initMap,
    TResult? Function()? getBusLocation,
    TResult? Function(Set<Polyline> polyLine)? addPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initMap,
    TResult Function()? getBusLocation,
    TResult Function(Set<Polyline> polyLine)? addPolyLines,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMap value) initMap,
    required TResult Function(_GetBusLocation value) getBusLocation,
    required TResult Function(_AddPolyLines value) addPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMap value)? initMap,
    TResult? Function(_GetBusLocation value)? getBusLocation,
    TResult? Function(_AddPolyLines value)? addPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMap value)? initMap,
    TResult Function(_GetBusLocation value)? getBusLocation,
    TResult Function(_AddPolyLines value)? addPolyLines,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTrackerStopsEventCopyWith<$Res> {
  factory $VehicleTrackerStopsEventCopyWith(VehicleTrackerStopsEvent value,
          $Res Function(VehicleTrackerStopsEvent) then) =
      _$VehicleTrackerStopsEventCopyWithImpl<$Res, VehicleTrackerStopsEvent>;
}

/// @nodoc
class _$VehicleTrackerStopsEventCopyWithImpl<$Res,
        $Val extends VehicleTrackerStopsEvent>
    implements $VehicleTrackerStopsEventCopyWith<$Res> {
  _$VehicleTrackerStopsEventCopyWithImpl(this._value, this._then);

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
    extends _$VehicleTrackerStopsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'VehicleTrackerStopsEvent.started()';
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
    required TResult Function() initMap,
    required TResult Function() getBusLocation,
    required TResult Function(Set<Polyline> polyLine) addPolyLines,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initMap,
    TResult? Function()? getBusLocation,
    TResult? Function(Set<Polyline> polyLine)? addPolyLines,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initMap,
    TResult Function()? getBusLocation,
    TResult Function(Set<Polyline> polyLine)? addPolyLines,
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
    required TResult Function(_InitMap value) initMap,
    required TResult Function(_GetBusLocation value) getBusLocation,
    required TResult Function(_AddPolyLines value) addPolyLines,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMap value)? initMap,
    TResult? Function(_GetBusLocation value)? getBusLocation,
    TResult? Function(_AddPolyLines value)? addPolyLines,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMap value)? initMap,
    TResult Function(_GetBusLocation value)? getBusLocation,
    TResult Function(_AddPolyLines value)? addPolyLines,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements VehicleTrackerStopsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$InitMapImplCopyWith<$Res> {
  factory _$$InitMapImplCopyWith(
          _$InitMapImpl value, $Res Function(_$InitMapImpl) then) =
      __$$InitMapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitMapImplCopyWithImpl<$Res>
    extends _$VehicleTrackerStopsEventCopyWithImpl<$Res, _$InitMapImpl>
    implements _$$InitMapImplCopyWith<$Res> {
  __$$InitMapImplCopyWithImpl(
      _$InitMapImpl _value, $Res Function(_$InitMapImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitMapImpl implements _InitMap {
  const _$InitMapImpl();

  @override
  String toString() {
    return 'VehicleTrackerStopsEvent.initMap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitMapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initMap,
    required TResult Function() getBusLocation,
    required TResult Function(Set<Polyline> polyLine) addPolyLines,
  }) {
    return initMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initMap,
    TResult? Function()? getBusLocation,
    TResult? Function(Set<Polyline> polyLine)? addPolyLines,
  }) {
    return initMap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initMap,
    TResult Function()? getBusLocation,
    TResult Function(Set<Polyline> polyLine)? addPolyLines,
    required TResult orElse(),
  }) {
    if (initMap != null) {
      return initMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMap value) initMap,
    required TResult Function(_GetBusLocation value) getBusLocation,
    required TResult Function(_AddPolyLines value) addPolyLines,
  }) {
    return initMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMap value)? initMap,
    TResult? Function(_GetBusLocation value)? getBusLocation,
    TResult? Function(_AddPolyLines value)? addPolyLines,
  }) {
    return initMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMap value)? initMap,
    TResult Function(_GetBusLocation value)? getBusLocation,
    TResult Function(_AddPolyLines value)? addPolyLines,
    required TResult orElse(),
  }) {
    if (initMap != null) {
      return initMap(this);
    }
    return orElse();
  }
}

abstract class _InitMap implements VehicleTrackerStopsEvent {
  const factory _InitMap() = _$InitMapImpl;
}

/// @nodoc
abstract class _$$GetBusLocationImplCopyWith<$Res> {
  factory _$$GetBusLocationImplCopyWith(_$GetBusLocationImpl value,
          $Res Function(_$GetBusLocationImpl) then) =
      __$$GetBusLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBusLocationImplCopyWithImpl<$Res>
    extends _$VehicleTrackerStopsEventCopyWithImpl<$Res, _$GetBusLocationImpl>
    implements _$$GetBusLocationImplCopyWith<$Res> {
  __$$GetBusLocationImplCopyWithImpl(
      _$GetBusLocationImpl _value, $Res Function(_$GetBusLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBusLocationImpl implements _GetBusLocation {
  const _$GetBusLocationImpl();

  @override
  String toString() {
    return 'VehicleTrackerStopsEvent.getBusLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBusLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initMap,
    required TResult Function() getBusLocation,
    required TResult Function(Set<Polyline> polyLine) addPolyLines,
  }) {
    return getBusLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initMap,
    TResult? Function()? getBusLocation,
    TResult? Function(Set<Polyline> polyLine)? addPolyLines,
  }) {
    return getBusLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initMap,
    TResult Function()? getBusLocation,
    TResult Function(Set<Polyline> polyLine)? addPolyLines,
    required TResult orElse(),
  }) {
    if (getBusLocation != null) {
      return getBusLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMap value) initMap,
    required TResult Function(_GetBusLocation value) getBusLocation,
    required TResult Function(_AddPolyLines value) addPolyLines,
  }) {
    return getBusLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMap value)? initMap,
    TResult? Function(_GetBusLocation value)? getBusLocation,
    TResult? Function(_AddPolyLines value)? addPolyLines,
  }) {
    return getBusLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMap value)? initMap,
    TResult Function(_GetBusLocation value)? getBusLocation,
    TResult Function(_AddPolyLines value)? addPolyLines,
    required TResult orElse(),
  }) {
    if (getBusLocation != null) {
      return getBusLocation(this);
    }
    return orElse();
  }
}

abstract class _GetBusLocation implements VehicleTrackerStopsEvent {
  const factory _GetBusLocation() = _$GetBusLocationImpl;
}

/// @nodoc
abstract class _$$AddPolyLinesImplCopyWith<$Res> {
  factory _$$AddPolyLinesImplCopyWith(
          _$AddPolyLinesImpl value, $Res Function(_$AddPolyLinesImpl) then) =
      __$$AddPolyLinesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<Polyline> polyLine});
}

/// @nodoc
class __$$AddPolyLinesImplCopyWithImpl<$Res>
    extends _$VehicleTrackerStopsEventCopyWithImpl<$Res, _$AddPolyLinesImpl>
    implements _$$AddPolyLinesImplCopyWith<$Res> {
  __$$AddPolyLinesImplCopyWithImpl(
      _$AddPolyLinesImpl _value, $Res Function(_$AddPolyLinesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polyLine = null,
  }) {
    return _then(_$AddPolyLinesImpl(
      polyLine: null == polyLine
          ? _value._polyLine
          : polyLine // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>,
    ));
  }
}

/// @nodoc

class _$AddPolyLinesImpl implements _AddPolyLines {
  const _$AddPolyLinesImpl({required final Set<Polyline> polyLine})
      : _polyLine = polyLine;

  final Set<Polyline> _polyLine;
  @override
  Set<Polyline> get polyLine {
    if (_polyLine is EqualUnmodifiableSetView) return _polyLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_polyLine);
  }

  @override
  String toString() {
    return 'VehicleTrackerStopsEvent.addPolyLines(polyLine: $polyLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPolyLinesImpl &&
            const DeepCollectionEquality().equals(other._polyLine, _polyLine));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_polyLine));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPolyLinesImplCopyWith<_$AddPolyLinesImpl> get copyWith =>
      __$$AddPolyLinesImplCopyWithImpl<_$AddPolyLinesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initMap,
    required TResult Function() getBusLocation,
    required TResult Function(Set<Polyline> polyLine) addPolyLines,
  }) {
    return addPolyLines(polyLine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initMap,
    TResult? Function()? getBusLocation,
    TResult? Function(Set<Polyline> polyLine)? addPolyLines,
  }) {
    return addPolyLines?.call(polyLine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initMap,
    TResult Function()? getBusLocation,
    TResult Function(Set<Polyline> polyLine)? addPolyLines,
    required TResult orElse(),
  }) {
    if (addPolyLines != null) {
      return addPolyLines(polyLine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMap value) initMap,
    required TResult Function(_GetBusLocation value) getBusLocation,
    required TResult Function(_AddPolyLines value) addPolyLines,
  }) {
    return addPolyLines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMap value)? initMap,
    TResult? Function(_GetBusLocation value)? getBusLocation,
    TResult? Function(_AddPolyLines value)? addPolyLines,
  }) {
    return addPolyLines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMap value)? initMap,
    TResult Function(_GetBusLocation value)? getBusLocation,
    TResult Function(_AddPolyLines value)? addPolyLines,
    required TResult orElse(),
  }) {
    if (addPolyLines != null) {
      return addPolyLines(this);
    }
    return orElse();
  }
}

abstract class _AddPolyLines implements VehicleTrackerStopsEvent {
  const factory _AddPolyLines({required final Set<Polyline> polyLine}) =
      _$AddPolyLinesImpl;

  Set<Polyline> get polyLine;
  @JsonKey(ignore: true)
  _$$AddPolyLinesImplCopyWith<_$AddPolyLinesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VehicleTrackerStopsState {
  StudentRouteEntity? get getTrackerStops => throw _privateConstructorUsedError;
  Set<Polyline>? get polyLines => throw _privateConstructorUsedError;
  VehicleLocationEntity? get getBusLiveLocation =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleTrackerStopsStateCopyWith<VehicleTrackerStopsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTrackerStopsStateCopyWith<$Res> {
  factory $VehicleTrackerStopsStateCopyWith(VehicleTrackerStopsState value,
          $Res Function(VehicleTrackerStopsState) then) =
      _$VehicleTrackerStopsStateCopyWithImpl<$Res, VehicleTrackerStopsState>;
  @useResult
  $Res call(
      {StudentRouteEntity? getTrackerStops,
      Set<Polyline>? polyLines,
      VehicleLocationEntity? getBusLiveLocation,
      bool isLoading});
}

/// @nodoc
class _$VehicleTrackerStopsStateCopyWithImpl<$Res,
        $Val extends VehicleTrackerStopsState>
    implements $VehicleTrackerStopsStateCopyWith<$Res> {
  _$VehicleTrackerStopsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTrackerStops = freezed,
    Object? polyLines = freezed,
    Object? getBusLiveLocation = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      getTrackerStops: freezed == getTrackerStops
          ? _value.getTrackerStops
          : getTrackerStops // ignore: cast_nullable_to_non_nullable
              as StudentRouteEntity?,
      polyLines: freezed == polyLines
          ? _value.polyLines
          : polyLines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>?,
      getBusLiveLocation: freezed == getBusLiveLocation
          ? _value.getBusLiveLocation
          : getBusLiveLocation // ignore: cast_nullable_to_non_nullable
              as VehicleLocationEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleTrackerStopsStateImplCopyWith<$Res>
    implements $VehicleTrackerStopsStateCopyWith<$Res> {
  factory _$$VehicleTrackerStopsStateImplCopyWith(
          _$VehicleTrackerStopsStateImpl value,
          $Res Function(_$VehicleTrackerStopsStateImpl) then) =
      __$$VehicleTrackerStopsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StudentRouteEntity? getTrackerStops,
      Set<Polyline>? polyLines,
      VehicleLocationEntity? getBusLiveLocation,
      bool isLoading});
}

/// @nodoc
class __$$VehicleTrackerStopsStateImplCopyWithImpl<$Res>
    extends _$VehicleTrackerStopsStateCopyWithImpl<$Res,
        _$VehicleTrackerStopsStateImpl>
    implements _$$VehicleTrackerStopsStateImplCopyWith<$Res> {
  __$$VehicleTrackerStopsStateImplCopyWithImpl(
      _$VehicleTrackerStopsStateImpl _value,
      $Res Function(_$VehicleTrackerStopsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTrackerStops = freezed,
    Object? polyLines = freezed,
    Object? getBusLiveLocation = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$VehicleTrackerStopsStateImpl(
      getTrackerStops: freezed == getTrackerStops
          ? _value.getTrackerStops
          : getTrackerStops // ignore: cast_nullable_to_non_nullable
              as StudentRouteEntity?,
      polyLines: freezed == polyLines
          ? _value._polyLines
          : polyLines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>?,
      getBusLiveLocation: freezed == getBusLiveLocation
          ? _value.getBusLiveLocation
          : getBusLiveLocation // ignore: cast_nullable_to_non_nullable
              as VehicleLocationEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VehicleTrackerStopsStateImpl implements _VehicleTrackerStopsState {
  const _$VehicleTrackerStopsStateImpl(
      {this.getTrackerStops,
      final Set<Polyline>? polyLines,
      this.getBusLiveLocation,
      this.isLoading = false})
      : _polyLines = polyLines;

  @override
  final StudentRouteEntity? getTrackerStops;
  final Set<Polyline>? _polyLines;
  @override
  Set<Polyline>? get polyLines {
    final value = _polyLines;
    if (value == null) return null;
    if (_polyLines is EqualUnmodifiableSetView) return _polyLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final VehicleLocationEntity? getBusLiveLocation;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'VehicleTrackerStopsState(getTrackerStops: $getTrackerStops, polyLines: $polyLines, getBusLiveLocation: $getBusLiveLocation, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleTrackerStopsStateImpl &&
            (identical(other.getTrackerStops, getTrackerStops) ||
                other.getTrackerStops == getTrackerStops) &&
            const DeepCollectionEquality()
                .equals(other._polyLines, _polyLines) &&
            (identical(other.getBusLiveLocation, getBusLiveLocation) ||
                other.getBusLiveLocation == getBusLiveLocation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getTrackerStops,
      const DeepCollectionEquality().hash(_polyLines),
      getBusLiveLocation,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleTrackerStopsStateImplCopyWith<_$VehicleTrackerStopsStateImpl>
      get copyWith => __$$VehicleTrackerStopsStateImplCopyWithImpl<
          _$VehicleTrackerStopsStateImpl>(this, _$identity);
}

abstract class _VehicleTrackerStopsState implements VehicleTrackerStopsState {
  const factory _VehicleTrackerStopsState(
      {final StudentRouteEntity? getTrackerStops,
      final Set<Polyline>? polyLines,
      final VehicleLocationEntity? getBusLiveLocation,
      final bool isLoading}) = _$VehicleTrackerStopsStateImpl;

  @override
  StudentRouteEntity? get getTrackerStops;
  @override
  Set<Polyline>? get polyLines;
  @override
  VehicleLocationEntity? get getBusLiveLocation;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$VehicleTrackerStopsStateImplCopyWith<_$VehicleTrackerStopsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
