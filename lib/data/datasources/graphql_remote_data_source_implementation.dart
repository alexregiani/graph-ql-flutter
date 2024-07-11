import 'package:flutter/cupertino.dart';
import 'package:graph_ql_flutter/core/typedefs.dart';
import 'package:graph_ql_flutter/data/datasources/graph_ql_client_provider.dart';
import 'package:graph_ql_flutter/data/datasources/graphql_remote_data_source.dart';
import 'package:graph_ql_flutter/data/models/user/user_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlRemoteDataSourceImplementation implements GraphqlRemoteDataSource {
  GraphqlRemoteDataSourceImplementation()
      : _client = GraphQlClientProvider.getClient();

  final GraphQLClient _client;

  @override
  Future<UserModel> getUser() async {
    const query = '''
      query {
        user(id: 1) {
          id
          username
          email
          address {
            geo {
              lat
              lng
            }
          }
        }
      }
    ''';

    final result = await _client.query(
      QueryOptions(
        document: gql(query),
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    } else {
      final user = UserModel.fromJson(result.data!['user'] as JSON);
      debugPrint('$user');
      return user;
    }
  }
}
