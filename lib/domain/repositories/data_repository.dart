import 'package:graph_ql_flutter/domain/entities/user/user_entity.dart';

abstract class DataRepository {
  Future<UserEntity> getUser();
}
