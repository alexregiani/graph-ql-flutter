import 'package:graph_ql_flutter/data/models/user/user_model.dart';

abstract class GraphqlRemoteDataSource {
  Future<UserModel> getUser();
}
