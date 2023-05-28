// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Invoice _$$_InvoiceFromJson(Map<String, dynamic> json) => _$_Invoice(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      xenditId: json['xendit_id'] as String?,
      paymentUrl: json['payment_url'] as String?,
      paymentMethod: json['payment_method'] as String?,
      amount: json['amount'] as int,
      createdAt: json['created_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InvoiceToJson(_$_Invoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'xendit_id': instance.xenditId,
      'payment_url': instance.paymentUrl,
      'payment_method': instance.paymentMethod,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'deleted_at': instance.deletedAt,
      'order': instance.order,
    };
