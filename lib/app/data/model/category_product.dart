import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_product.freezed.dart';

part 'category_product.g.dart';

@freezed
class CategoryProduct with _$CategoryProduct {
  const factory CategoryProduct({
    required String id,
    required String code,
    required String name,
    String? description,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
  }) = _CategoryProduct;

  factory CategoryProduct.fromJson(Map<String, Object?> json) =>
      _$CategoryProductFromJson(json);
}
