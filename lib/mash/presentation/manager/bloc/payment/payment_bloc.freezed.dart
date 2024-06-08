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
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentDashboard value) getPaymentDashboard,
    required TResult Function(_SelectPaymentsCheckboxEvent value)
        selectPaymentsCheckboxEvent,
    required TResult Function(_SelectedItemIndex value) selectedItemIndex,
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
  $Res call(
      {PaymentStatusType paymentStatusType, String userId, String? trackId});
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
    Object? trackId = freezed,
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
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetPaymentDashboardImpl implements _GetPaymentDashboard {
  const _$GetPaymentDashboardImpl(
      {required this.paymentStatusType, required this.userId, this.trackId});

  @override
  final PaymentStatusType paymentStatusType;
  @override
  final String userId;
  @override
  final String? trackId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentDashboard(paymentStatusType: $paymentStatusType, userId: $userId, trackId: $trackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDashboardImpl &&
            (identical(other.paymentStatusType, paymentStatusType) ||
                other.paymentStatusType == paymentStatusType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.trackId, trackId) || other.trackId == trackId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentStatusType, userId, trackId);

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
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return getPaymentDashboard(paymentStatusType, userId, trackId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return getPaymentDashboard?.call(paymentStatusType, userId, trackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentDashboard != null) {
      return getPaymentDashboard(paymentStatusType, userId, trackId);
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
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
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
      required final String userId,
      final String? trackId}) = _$GetPaymentDashboardImpl;

  PaymentStatusType get paymentStatusType;
  String get userId;
  String? get trackId;
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
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return selectPaymentsCheckboxEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return selectPaymentsCheckboxEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
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
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return selectedItemIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return selectedItemIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
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
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
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
abstract class _$$GetPaymentFinalAmountImplCopyWith<$Res> {
  factory _$$GetPaymentFinalAmountImplCopyWith(
          _$GetPaymentFinalAmountImpl value,
          $Res Function(_$GetPaymentFinalAmountImpl) then) =
      __$$GetPaymentFinalAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String totalAmount, String installmentId, String studentId});
}

/// @nodoc
class __$$GetPaymentFinalAmountImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentFinalAmountImpl>
    implements _$$GetPaymentFinalAmountImplCopyWith<$Res> {
  __$$GetPaymentFinalAmountImplCopyWithImpl(_$GetPaymentFinalAmountImpl _value,
      $Res Function(_$GetPaymentFinalAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = null,
    Object? installmentId = null,
    Object? studentId = null,
  }) {
    return _then(_$GetPaymentFinalAmountImpl(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentFinalAmountImpl implements _GetPaymentFinalAmount {
  const _$GetPaymentFinalAmountImpl(
      {required this.totalAmount,
      required this.installmentId,
      required this.studentId});

  @override
  final String totalAmount;
  @override
  final String installmentId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentFinalAmount(totalAmount: $totalAmount, installmentId: $installmentId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentFinalAmountImpl &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalAmount, installmentId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentFinalAmountImplCopyWith<_$GetPaymentFinalAmountImpl>
      get copyWith => __$$GetPaymentFinalAmountImplCopyWithImpl<
          _$GetPaymentFinalAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return getPaymentFinalAmount(totalAmount, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return getPaymentFinalAmount?.call(totalAmount, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentFinalAmount != null) {
      return getPaymentFinalAmount(totalAmount, installmentId, studentId);
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
  }) {
    return getPaymentFinalAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
  }) {
    return getPaymentFinalAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentFinalAmount != null) {
      return getPaymentFinalAmount(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentFinalAmount implements PaymentEvent {
  const factory _GetPaymentFinalAmount(
      {required final String totalAmount,
      required final String installmentId,
      required final String studentId}) = _$GetPaymentFinalAmountImpl;

  String get totalAmount;
  String get installmentId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$GetPaymentFinalAmountImplCopyWith<_$GetPaymentFinalAmountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentOrderIdImplCopyWith<$Res> {
  factory _$$GetPaymentOrderIdImplCopyWith(_$GetPaymentOrderIdImpl value,
          $Res Function(_$GetPaymentOrderIdImpl) then) =
      __$$GetPaymentOrderIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String student,
      String mobile,
      String remark,
      String installmentId,
      String studentId});
}

/// @nodoc
class __$$GetPaymentOrderIdImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentOrderIdImpl>
    implements _$$GetPaymentOrderIdImplCopyWith<$Res> {
  __$$GetPaymentOrderIdImplCopyWithImpl(_$GetPaymentOrderIdImpl _value,
      $Res Function(_$GetPaymentOrderIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? student = null,
    Object? mobile = null,
    Object? remark = null,
    Object? installmentId = null,
    Object? studentId = null,
  }) {
    return _then(_$GetPaymentOrderIdImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentOrderIdImpl implements _GetPaymentOrderId {
  const _$GetPaymentOrderIdImpl(
      {required this.email,
      required this.student,
      required this.mobile,
      required this.remark,
      required this.installmentId,
      required this.studentId});

  @override
  final String email;
  @override
  final String student;
  @override
  final String mobile;
  @override
  final String remark;
  @override
  final String installmentId;
  @override
  final String studentId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentOrderId(email: $email, student: $student, mobile: $mobile, remark: $remark, installmentId: $installmentId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentOrderIdImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, student, mobile, remark, installmentId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentOrderIdImplCopyWith<_$GetPaymentOrderIdImpl> get copyWith =>
      __$$GetPaymentOrderIdImplCopyWithImpl<_$GetPaymentOrderIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return getPaymentOrderId(
        email, student, mobile, remark, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return getPaymentOrderId?.call(
        email, student, mobile, remark, installmentId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentOrderId != null) {
      return getPaymentOrderId(
          email, student, mobile, remark, installmentId, studentId);
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
  }) {
    return getPaymentOrderId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
  }) {
    return getPaymentOrderId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentOrderId != null) {
      return getPaymentOrderId(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentOrderId implements PaymentEvent {
  const factory _GetPaymentOrderId(
      {required final String email,
      required final String student,
      required final String mobile,
      required final String remark,
      required final String installmentId,
      required final String studentId}) = _$GetPaymentOrderIdImpl;

  String get email;
  String get student;
  String get mobile;
  String get remark;
  String get installmentId;
  String get studentId;
  @JsonKey(ignore: true)
  _$$GetPaymentOrderIdImplCopyWith<_$GetPaymentOrderIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentTokenAndOpenPaymentImplCopyWith<$Res> {
  factory _$$GetPaymentTokenAndOpenPaymentImplCopyWith(
          _$GetPaymentTokenAndOpenPaymentImpl value,
          $Res Function(_$GetPaymentTokenAndOpenPaymentImpl) then) =
      __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String student,
      String mobile,
      String remark,
      String installmentId,
      String studentId,
      String orderId});
}

/// @nodoc
class __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res,
        _$GetPaymentTokenAndOpenPaymentImpl>
    implements _$$GetPaymentTokenAndOpenPaymentImplCopyWith<$Res> {
  __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl(
      _$GetPaymentTokenAndOpenPaymentImpl _value,
      $Res Function(_$GetPaymentTokenAndOpenPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? student = null,
    Object? mobile = null,
    Object? remark = null,
    Object? installmentId = null,
    Object? studentId = null,
    Object? orderId = null,
  }) {
    return _then(_$GetPaymentTokenAndOpenPaymentImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      installmentId: null == installmentId
          ? _value.installmentId
          : installmentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentTokenAndOpenPaymentImpl
    implements _GetPaymentTokenAndOpenPayment {
  const _$GetPaymentTokenAndOpenPaymentImpl(
      {required this.email,
      required this.student,
      required this.mobile,
      required this.remark,
      required this.installmentId,
      required this.studentId,
      required this.orderId});

  @override
  final String email;
  @override
  final String student;
  @override
  final String mobile;
  @override
  final String remark;
  @override
  final String installmentId;
  @override
  final String studentId;
  @override
  final String orderId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentTokenAndOpenPayment(email: $email, student: $student, mobile: $mobile, remark: $remark, installmentId: $installmentId, studentId: $studentId, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentTokenAndOpenPaymentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.installmentId, installmentId) ||
                other.installmentId == installmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, student, mobile, remark,
      installmentId, studentId, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentTokenAndOpenPaymentImplCopyWith<
          _$GetPaymentTokenAndOpenPaymentImpl>
      get copyWith => __$$GetPaymentTokenAndOpenPaymentImplCopyWithImpl<
          _$GetPaymentTokenAndOpenPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return getPaymentTokenAndOpenPayment(
        email, student, mobile, remark, installmentId, studentId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return getPaymentTokenAndOpenPayment?.call(
        email, student, mobile, remark, installmentId, studentId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentTokenAndOpenPayment != null) {
      return getPaymentTokenAndOpenPayment(
          email, student, mobile, remark, installmentId, studentId, orderId);
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
  }) {
    return getPaymentTokenAndOpenPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
  }) {
    return getPaymentTokenAndOpenPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentTokenAndOpenPayment != null) {
      return getPaymentTokenAndOpenPayment(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentTokenAndOpenPayment implements PaymentEvent {
  const factory _GetPaymentTokenAndOpenPayment(
      {required final String email,
      required final String student,
      required final String mobile,
      required final String remark,
      required final String installmentId,
      required final String studentId,
      required final String orderId}) = _$GetPaymentTokenAndOpenPaymentImpl;

  String get email;
  String get student;
  String get mobile;
  String get remark;
  String get installmentId;
  String get studentId;
  String get orderId;
  @JsonKey(ignore: true)
  _$$GetPaymentTokenAndOpenPaymentImplCopyWith<
          _$GetPaymentTokenAndOpenPaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPaymentCompleteResponseImplCopyWith<$Res> {
  factory _$$GetPaymentCompleteResponseImplCopyWith(
          _$GetPaymentCompleteResponseImpl value,
          $Res Function(_$GetPaymentCompleteResponseImpl) then) =
      __$$GetPaymentCompleteResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$GetPaymentCompleteResponseImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetPaymentCompleteResponseImpl>
    implements _$$GetPaymentCompleteResponseImplCopyWith<$Res> {
  __$$GetPaymentCompleteResponseImplCopyWithImpl(
      _$GetPaymentCompleteResponseImpl _value,
      $Res Function(_$GetPaymentCompleteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetPaymentCompleteResponseImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentCompleteResponseImpl implements _GetPaymentCompleteResponse {
  const _$GetPaymentCompleteResponseImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'PaymentEvent.getPaymentCompleteResponse(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentCompleteResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentCompleteResponseImplCopyWith<_$GetPaymentCompleteResponseImpl>
      get copyWith => __$$GetPaymentCompleteResponseImplCopyWithImpl<
          _$GetPaymentCompleteResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusType paymentStatusType, String userId, String? trackId)
        getPaymentDashboard,
    required TResult Function(String id) selectPaymentsCheckboxEvent,
    required TResult Function(int? index) selectedItemIndex,
    required TResult Function(
            String totalAmount, String installmentId, String studentId)
        getPaymentFinalAmount,
    required TResult Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)
        getPaymentOrderId,
    required TResult Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)
        getPaymentTokenAndOpenPayment,
    required TResult Function(String orderId) getPaymentCompleteResponse,
  }) {
    return getPaymentCompleteResponse(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult? Function(String id)? selectPaymentsCheckboxEvent,
    TResult? Function(int? index)? selectedItemIndex,
    TResult? Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult? Function(String email, String student, String mobile,
            String remark, String installmentId, String studentId)?
        getPaymentOrderId,
    TResult? Function(
            String email,
            String student,
            String mobile,
            String remark,
            String installmentId,
            String studentId,
            String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(String orderId)? getPaymentCompleteResponse,
  }) {
    return getPaymentCompleteResponse?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusType paymentStatusType, String userId,
            String? trackId)?
        getPaymentDashboard,
    TResult Function(String id)? selectPaymentsCheckboxEvent,
    TResult Function(int? index)? selectedItemIndex,
    TResult Function(
            String totalAmount, String installmentId, String studentId)?
        getPaymentFinalAmount,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId)?
        getPaymentOrderId,
    TResult Function(String email, String student, String mobile, String remark,
            String installmentId, String studentId, String orderId)?
        getPaymentTokenAndOpenPayment,
    TResult Function(String orderId)? getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentCompleteResponse != null) {
      return getPaymentCompleteResponse(orderId);
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
    required TResult Function(_GetPaymentFinalAmount value)
        getPaymentFinalAmount,
    required TResult Function(_GetPaymentOrderId value) getPaymentOrderId,
    required TResult Function(_GetPaymentTokenAndOpenPayment value)
        getPaymentTokenAndOpenPayment,
    required TResult Function(_GetPaymentCompleteResponse value)
        getPaymentCompleteResponse,
  }) {
    return getPaymentCompleteResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult? Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult? Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult? Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult? Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult? Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult? Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
  }) {
    return getPaymentCompleteResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentDashboard value)? getPaymentDashboard,
    TResult Function(_SelectPaymentsCheckboxEvent value)?
        selectPaymentsCheckboxEvent,
    TResult Function(_SelectedItemIndex value)? selectedItemIndex,
    TResult Function(_GetPaymentFinalAmount value)? getPaymentFinalAmount,
    TResult Function(_GetPaymentOrderId value)? getPaymentOrderId,
    TResult Function(_GetPaymentTokenAndOpenPayment value)?
        getPaymentTokenAndOpenPayment,
    TResult Function(_GetPaymentCompleteResponse value)?
        getPaymentCompleteResponse,
    required TResult orElse(),
  }) {
    if (getPaymentCompleteResponse != null) {
      return getPaymentCompleteResponse(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentCompleteResponse implements PaymentEvent {
  const factory _GetPaymentCompleteResponse({required final String orderId}) =
      _$GetPaymentCompleteResponseImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$GetPaymentCompleteResponseImplCopyWith<_$GetPaymentCompleteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  ResponseClassify<List<PaymentDashboardEntity>> get paymentDashboardResponse =>
      throw _privateConstructorUsedError;
  int? get selectedItemIndex => throw _privateConstructorUsedError;
  Set<String?>? get selectedCheckboxItems => throw _privateConstructorUsedError;
  String get totalAmount => throw _privateConstructorUsedError;
  ResponseClassify<String> get paymentUniqueOrderId =>
      throw _privateConstructorUsedError;
  ResponseClassify<List<PaymentDashboardEntity>> get paymentHistoryResponse =>
      throw _privateConstructorUsedError;
  ResponseClassify<PaymentCompleteResponseEntity> get paymentCompleteResponse =>
      throw _privateConstructorUsedError;

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
      Set<String?>? selectedCheckboxItems,
      String totalAmount,
      ResponseClassify<String> paymentUniqueOrderId,
      ResponseClassify<List<PaymentDashboardEntity>> paymentHistoryResponse,
      ResponseClassify<PaymentCompleteResponseEntity> paymentCompleteResponse});
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
    Object? totalAmount = null,
    Object? paymentUniqueOrderId = null,
    Object? paymentHistoryResponse = null,
    Object? paymentCompleteResponse = null,
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
              as Set<String?>?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUniqueOrderId: null == paymentUniqueOrderId
          ? _value.paymentUniqueOrderId
          : paymentUniqueOrderId // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      paymentHistoryResponse: null == paymentHistoryResponse
          ? _value.paymentHistoryResponse
          : paymentHistoryResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      paymentCompleteResponse: null == paymentCompleteResponse
          ? _value.paymentCompleteResponse
          : paymentCompleteResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<PaymentCompleteResponseEntity>,
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
      Set<String?>? selectedCheckboxItems,
      String totalAmount,
      ResponseClassify<String> paymentUniqueOrderId,
      ResponseClassify<List<PaymentDashboardEntity>> paymentHistoryResponse,
      ResponseClassify<PaymentCompleteResponseEntity> paymentCompleteResponse});
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
    Object? totalAmount = null,
    Object? paymentUniqueOrderId = null,
    Object? paymentHistoryResponse = null,
    Object? paymentCompleteResponse = null,
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
              as Set<String?>?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUniqueOrderId: null == paymentUniqueOrderId
          ? _value.paymentUniqueOrderId
          : paymentUniqueOrderId // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<String>,
      paymentHistoryResponse: null == paymentHistoryResponse
          ? _value.paymentHistoryResponse
          : paymentHistoryResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<List<PaymentDashboardEntity>>,
      paymentCompleteResponse: null == paymentCompleteResponse
          ? _value.paymentCompleteResponse
          : paymentCompleteResponse // ignore: cast_nullable_to_non_nullable
              as ResponseClassify<PaymentCompleteResponseEntity>,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {required this.paymentDashboardResponse,
      required this.selectedItemIndex,
      required final Set<String?>? selectedCheckboxItems,
      required this.totalAmount,
      required this.paymentUniqueOrderId,
      required this.paymentHistoryResponse,
      required this.paymentCompleteResponse})
      : _selectedCheckboxItems = selectedCheckboxItems;

  @override
  final ResponseClassify<List<PaymentDashboardEntity>> paymentDashboardResponse;
  @override
  final int? selectedItemIndex;
  final Set<String?>? _selectedCheckboxItems;
  @override
  Set<String?>? get selectedCheckboxItems {
    final value = _selectedCheckboxItems;
    if (value == null) return null;
    if (_selectedCheckboxItems is EqualUnmodifiableSetView)
      return _selectedCheckboxItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final String totalAmount;
  @override
  final ResponseClassify<String> paymentUniqueOrderId;
  @override
  final ResponseClassify<List<PaymentDashboardEntity>> paymentHistoryResponse;
  @override
  final ResponseClassify<PaymentCompleteResponseEntity> paymentCompleteResponse;

  @override
  String toString() {
    return 'PaymentState(paymentDashboardResponse: $paymentDashboardResponse, selectedItemIndex: $selectedItemIndex, selectedCheckboxItems: $selectedCheckboxItems, totalAmount: $totalAmount, paymentUniqueOrderId: $paymentUniqueOrderId, paymentHistoryResponse: $paymentHistoryResponse, paymentCompleteResponse: $paymentCompleteResponse)';
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
                .equals(other._selectedCheckboxItems, _selectedCheckboxItems) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentUniqueOrderId, paymentUniqueOrderId) ||
                other.paymentUniqueOrderId == paymentUniqueOrderId) &&
            (identical(other.paymentHistoryResponse, paymentHistoryResponse) ||
                other.paymentHistoryResponse == paymentHistoryResponse) &&
            (identical(
                    other.paymentCompleteResponse, paymentCompleteResponse) ||
                other.paymentCompleteResponse == paymentCompleteResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentDashboardResponse,
      selectedItemIndex,
      const DeepCollectionEquality().hash(_selectedCheckboxItems),
      totalAmount,
      paymentUniqueOrderId,
      paymentHistoryResponse,
      paymentCompleteResponse);

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
      required final Set<String?>? selectedCheckboxItems,
      required final String totalAmount,
      required final ResponseClassify<String> paymentUniqueOrderId,
      required final ResponseClassify<List<PaymentDashboardEntity>>
          paymentHistoryResponse,
      required final ResponseClassify<PaymentCompleteResponseEntity>
          paymentCompleteResponse}) = _$PaymentStateImpl;

  @override
  ResponseClassify<List<PaymentDashboardEntity>> get paymentDashboardResponse;
  @override
  int? get selectedItemIndex;
  @override
  Set<String?>? get selectedCheckboxItems;
  @override
  String get totalAmount;
  @override
  ResponseClassify<String> get paymentUniqueOrderId;
  @override
  ResponseClassify<List<PaymentDashboardEntity>> get paymentHistoryResponse;
  @override
  ResponseClassify<PaymentCompleteResponseEntity> get paymentCompleteResponse;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
