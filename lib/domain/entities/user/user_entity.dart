import 'package:graph_ql_flutter/domain/entities/user/entities/address_entity.dart';

class UserEntity {
  UserEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.address,
  });

  final String id;
  final String username;
  final String email;
  final Address address;

  @override
  String toString() {
    return 'user{id: $id, username: $username,'
        ' email: $email, address: $address}';
  }
}
