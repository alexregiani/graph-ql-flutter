import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlClientProvider {
  static GraphQLClient getClient() {
    final httpLink = HttpLink('https://graphqlzero.almansi.me/api');
    return GraphQLClient(link: httpLink, cache: GraphQLCache());
  }
}
