import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goocommerce/app/data/model/order_item.dart';
import 'package:goocommerce/app/data/model/product.dart';
part 'order.freezed.dart';

part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'branch_id') required String branchId,
    @JsonKey(name: 'invoice_id') required String invoiceId,
    @JsonKey(name: 'order_status') required String orderStatus,
    required int total,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'order_items') required List<OrderItem> orderItems,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);
}
