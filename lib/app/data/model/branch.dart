import 'package:freezed_annotation/freezed_annotation.dart';
part 'branch.freezed.dart';

part 'branch.g.dart';

@freezed
class Branch with _$Branch {
  const factory Branch({
    required String id,
    @JsonKey(name: 'country_id') required String countryId,
    required String code,
    required String name,
    String? address,
    @JsonKey(name: 'map_url') String? mapUrl,
    String? password,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'name_country') String? nameCountry,
    String? image,
  }) = _Branch;

  factory Branch.fromJson(Map<String, Object?> json) => _$BranchFromJson(json);
}
