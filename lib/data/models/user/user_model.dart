import 'package:graph_ql_flutter/core/typedefs.dart';
import 'package:graph_ql_flutter/data/models/user/models/address_model.dart';
import 'package:graph_ql_flutter/domain/entities/user/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.username,
    required super.email,
    required super.address,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: AddressModel.fromJson(json['address'] as JSON),
    );
  }
}
