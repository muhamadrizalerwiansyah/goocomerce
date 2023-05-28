import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goocommerce/app/data/model/product.dart';

import 'order.dart';
part 'invoice.freezed.dart';

part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'xendit_id') String? xenditId,
    @JsonKey(name: 'payment_url') String? paymentUrl,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    required int amount,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    required Order order,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
