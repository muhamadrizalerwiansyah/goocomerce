import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goocommerce/app/data/model/category_product.dart';
part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    @JsonKey(name: 'category_product_id') String? categoryProductId,
    required String name,
    String? description,
    int? price,
    String? photos,
    int? stock,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'name_category') String? nameCategory,
    CategoryProduct? category,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
