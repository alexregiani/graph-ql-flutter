import 'package:graph_ql_flutter/data/datasources/graphql_remote_data_source.dart';
import 'package:graph_ql_flutter/domain/entities/user/user_entity.dart';
import 'package:graph_ql_flutter/domain/repositories/data_repository.dart';

class DataRepositoryImplementation extends DataRepository {
  DataRepositoryImplementation({required this.graphqlRemoteDataSource});

  final GraphqlRemoteDataSource graphqlRemoteDataSource;
  @override
  Future<UserEntity> getUser() async {
    return graphqlRemoteDataSource.getUser();
  }
}
