// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPaymentDashboardImplCopyWith<$Res> {
  factory _$$GetPaymentDashboardImplCopyWith(_$GetPaymentDashboardImpl value,
          $Res Function(_$GetPaymentDashboardImpl) then) =
      __$$GetPaymentDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentStatusType paymentStatusType, String userId});
}

/// @nodoc
class __$$GetPaymentDashboardImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentDashboardImpl>
    implements _$$GetPaymentDashboardImplCopyWith<$Res> {
  __$$GetPaymentDashboardImplCopyWithImpl(_$GetPaymentDashboardImpl _value,
      $Res Function(_$GetPaymentDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatusType = null,
    Object? userId = null,
  }) {
    return _then(_$GetPaymentDashboardImpl(
      paymentStatusType: null == paymentStatusType
          ? _value.paymentStatusType
          : paymentStatusType // ignore: cast_nullable_to_non_nullable
              as PaymentStatusType,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentDashboardImpl implements _GetPaymentDashboard {
  const _$GetPaymentDashboardImpl(
      {required this.paymentStatusType, required this.userId});

  @override
  final PaymentStatusType paymentStatusType;
  @override
  final String userId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentDashboard(paymentStatusType: $paymentStatusType, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDashboardImpl &&
            (identical(other.paymentStatusType, paymentStatusType) ||
                other.paymentStatusType == paymentStatusType) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentStatusType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDashboardImplCopyWith<_$GetPaymentDashboardImpl> get copyWith =>
      __$$GetPaymentDashboardImplCopyWithImpl<_$GetPaymentDashboardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
  }) {
    return getPaymentDashboard(paymentStatusType, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
  }) {
    return getPaymentDashboard?.call(paymentStatusType, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    required TResult orElse(),
  }) {
    if (getPaymentDashboard != null) {
      return getPaymentDashboard(paymentStatusType, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
  }) {
    return getPaymentDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
  }) {
    return getPaymentDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    required TResult orElse(),
  }) {
    if (getPaymentDashboard != null) {
      return getPaymentDashboard(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentDashboard implements PaymentEvent {
  const factory _GetPaymentDashboard(
      {required final PaymentStatusType paymentStatusType,
      required final String userId}) = _$GetPaymentDashboardImpl;

  PaymentStatusType get paymentStatusType;
  String get userId;
  @JsonKey(ignore: true)
  _$$GetPaymentDashboardImplCopyWith<_$GetPaymentDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaymentsCheckboxEventImplCopyWith<$Res> {
  factory _$$SelectPaymentsCheckboxEventImplCopyWith(
          _$SelectPaymentsCheckboxEventImpl value,
          $Res Function(_$SelectPaymentsCheckboxEventImpl) then) =
      __$$SelectPaymentsCheckboxEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SelectPaymentsCheckboxEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$SelectPaymentsCheckboxEventImpl>
    implements _$$SelectPaymentsCheckboxEventImplCopyWith<$Res> {
  __$$SelectPaymentsCheckboxEventImplCopyWithImpl(
      _$SelectPaymentsCheckboxEventImpl _value,
      $Res Function(_$SelectPaymentsCheckboxEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectPaymentsCheckboxEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectPaymentsCheckboxEventImpl
    implements _SelectPaymentsCheckboxEvent {
  const _$SelectPaymentsCheckboxEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PaymentEvent.selectPaymentsCheckboxEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaymentsCheckboxEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaymentsCheckboxEventImplCopyWith<_$SelectPaymentsCheckboxEventImpl>
      get copyWith => __$$SelectPaymentsCheckboxEventImplCopyWithImpl<
          _$SelectPaymentsCheckboxEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
  }) {
    return selectPaymentsCheckboxEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
  }) {
    return selectPaymentsCheckboxEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    required TResult orElse(),
  }) {
    if (selectPaymentsCheckboxEvent != null) {
      return selectPaymentsCheckboxEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
  }) {
    return selectPaymentsCheckboxEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
  }) {
    return selectPaymentsCheckboxEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    required TResult orElse(),
  }) {
    if (selectPaymentsCheckboxEvent != null) {
      return selectPaymentsCheckboxEvent(this);
    }
    return orElse();
  }
}

abstract class _SelectPaymentsCheckboxEvent implements PaymentEvent {
  const factory _SelectPaymentsCheckboxEvent(final String id) =
      _$SelectPaymentsCheckboxEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SelectPaymentsCheckboxEventImplCopyWith<_$SelectPaymentsCheckboxEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedItemIndexImplCopyWith<$Res> {
  factory _$$SelectedItemIndexImplCopyWith(_$SelectedItemIndexImpl value,
          $Res Function(_$SelectedItemIndexImpl) then) =
      __$$SelectedItemIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$SelectedItemIndexImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$SelectedItemIndexImpl>
    implements _$$SelectedItemIndexImplCopyWith<$Res> {
  __$$SelectedItemIndexImplCopyWithImpl(_$SelectedItemIndexImpl _value,
      $Res Function(_$SelectedItemIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SelectedItemIndexImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SelectedItemIndexImpl implements _SelectedItemIndex {
  const _$SelectedItemIndexImpl({required this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'PaymentEvent.selectedItemIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedItemIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedItemIndexImplCopyWith<_$SelectedItemIndexImpl> get copyWith =>
      __$$SelectedItemIndexImplCopyWithImpl<_$SelectedItemIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
  }) {
    return selectedItemIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
  }) {
    return selectedItemIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    required TResult orElse(),
  }) {
    if (selectedItemIndex != null) {
      return selectedItemIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
  }) {
    return selectedItemIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
  }) {
    return selectedItemIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    required TResult orElse(),
  }) {
    if (selectedItemIndex != null) {
      return selectedItemIndex(this);
    }
    return orElse();
  }
}

abstract class _SelectedItemIndex implements PaymentEvent {
  const factory _SelectedItemIndex({required final int? index}) =
      _$SelectedItemIndexImpl;

  int? get index;
  @JsonKey(ignore: true)
  _$$SelectedItemIndexImplCopyWith<_$SelectedItemIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  ResponseClassify<List<PaymentDashboardEntity>> get paymentDashboardResponse =>
      throw _privateConstructorUsedError;
  int? get selectedItemIndex => throw _privateConstructorUsedError;
  Set<String>? get selectedCheckboxItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse,
      int? selectedItemIndex,
      Set<String>? selectedCheckboxItems});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDashboardResponse = null,
    Object? selectedItemIndex = freezed,
    Object? selectedCheckboxItems = freezed,
  }) {
    return _then(_value.copyWith(
      paymentDashboardResponse: null == paymentDashboardResponse
          ? _value.paymentDashboardResponse
          : paymentDashboardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      selectedItemIndex: freezed == selectedItemIndex
          ? _value.selectedItemIndex
          : selectedItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCheckboxItems: freezed == selectedCheckboxItems
          ? _value.selectedCheckboxItems
          : selectedCheckboxItems // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse,
      int? selectedItemIndex,
      Set<String>? selectedCheckboxItems});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDashboardResponse = null,
    Object? selectedItemIndex = freezed,
    Object? selectedCheckboxItems = freezed,
  }) {
    return _then(_$PaymentStateImpl(
      paymentDashboardResponse: null == paymentDashboardResponse
          ? _value.paymentDashboardResponse
          : paymentDashboardResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      selectedItemIndex: freezed == selectedItemIndex
          ? _value.selectedItemIndex
          : selectedItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCheckboxItems: freezed == selectedCheckboxItems
          ? _value._selectedCheckboxItems
          : selectedCheckboxItems // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {required this.paymentDashboardResponse,
      required this.selectedItemIndex,
      required final Set<String>? selectedCheckboxItems})
      : _selectedCheckboxItems = selectedCheckboxItems;

  @override
  final ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse;
  @override
  final int? selectedItemIndex;
  final Set<String>? _selectedCheckboxItems;
  @override
  Set<String>? get selectedCheckboxItems {
    final value = _selectedCheckboxItems;
    if (value == null) return null;
    if (_selectedCheckboxItems is EqualUnmodifiableSetView)
      return _selectedCheckboxItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'PaymentState(paymentDashboardResponse: $paymentDashboardResponse, selectedItemIndex: $selectedItemIndex, selectedCheckboxItems: $selectedCheckboxItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(
                    other.paymentDashboardResponse, paymentDashboardResponse) ||
                other.paymentDashboardResponse == paymentDashboardResponse) &&
            (identical(other.selectedItemIndex, selectedItemIndex) ||
                other.selectedItemIndex == selectedItemIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedCheckboxItems, _selectedCheckboxItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentDashboardResponse,
      selectedItemIndex,
      const DeepCollectionEquality().hash(_selectedCheckboxItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required final ResponseClassify<List<PaymentDashboardEntity>>
          paymentDashboardResponse,
      required final int? selectedItemIndex,
      required final Set<String>? selectedCheckboxItems}) = _$PaymentStateImpl;

  @override
  ResponseClassify<List<PaymentDashboardEntity>> get paymentDashboardResponse;
  @override
  int? get selectedItemIndex;
  @override
  Set<String>? get selectedCheckboxItems;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
