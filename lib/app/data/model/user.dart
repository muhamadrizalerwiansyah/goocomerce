import 'package:freezed_annotation/freezed_annotation.dart';

import 'branch.dart';
part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    String? role,
    String? photo,
    String? password,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'deleted_at') required String? deletedAt,
    @JsonKey(name: 'branch_id') String? branchId,
    Gender? gender,
    Branch? branch,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

enum Gender {
  @JsonValue("MALE")
  male,
  @JsonValue("FEMALE")
  female
}

extension ParseToString on Gender {
  String toStringValue() {
    return toString().split('.').last.toUpperCase();
  }
}
