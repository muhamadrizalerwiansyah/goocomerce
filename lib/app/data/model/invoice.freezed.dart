// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'xendit_id')
  String? get xenditId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_url')
  String? get paymentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'xendit_id') String? xenditId,
      @JsonKey(name: 'payment_url') String? paymentUrl,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      int amount,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? xenditId = freezed,
    Object? paymentUrl = freezed,
    Object? paymentMethod = freezed,
    Object? amount = null,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      xenditId: freezed == xenditId
          ? _value.xenditId
          : xenditId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$_InvoiceCopyWith(
          _$_Invoice value, $Res Function(_$_Invoice) then) =
      __$$_InvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'xendit_id') String? xenditId,
      @JsonKey(name: 'payment_url') String? paymentUrl,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      int amount,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      Order order});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_InvoiceCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$_Invoice>
    implements _$$_InvoiceCopyWith<$Res> {
  __$$_InvoiceCopyWithImpl(_$_Invoice _value, $Res Function(_$_Invoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? xenditId = freezed,
    Object? paymentUrl = freezed,
    Object? paymentMethod = freezed,
    Object? amount = null,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
    Object? order = null,
  }) {
    return _then(_$_Invoice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      xenditId: freezed == xenditId
          ? _value.xenditId
          : xenditId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invoice implements _Invoice {
  const _$_Invoice(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'xendit_id') this.xenditId,
      @JsonKey(name: 'payment_url') this.paymentUrl,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      required this.amount,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      required this.order});

  factory _$_Invoice.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'xendit_id')
  final String? xenditId;
  @override
  @JsonKey(name: 'payment_url')
  final String? paymentUrl;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  final int amount;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  final Order order;

  @override
  String toString() {
    return 'Invoice(id: $id, userId: $userId, xenditId: $xenditId, paymentUrl: $paymentUrl, paymentMethod: $paymentMethod, amount: $amount, createdAt: $createdAt, deletedAt: $deletedAt, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xenditId, xenditId) ||
                other.xenditId == xenditId) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, xenditId, paymentUrl,
      paymentMethod, amount, createdAt, deletedAt, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      __$$_InvoiceCopyWithImpl<_$_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'xendit_id') final String? xenditId,
      @JsonKey(name: 'payment_url') final String? paymentUrl,
      @JsonKey(name: 'payment_method') final String? paymentMethod,
      required final int amount,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      required final Order order}) = _$_Invoice;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$_Invoice.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'xendit_id')
  String? get xenditId;
  @override
  @JsonKey(name: 'payment_url')
  String? get paymentUrl;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  int get amount;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  Order get order;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}
