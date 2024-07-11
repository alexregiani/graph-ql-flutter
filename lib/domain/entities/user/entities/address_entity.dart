import 'package:graph_ql_flutter/domain/entities/user/entities/geo_entity.dart';

class Address {
  Address({required this.geo});
  final Geo geo;

  @override
  String toString() {
    return 'Address{geo: $geo}';
  }
}
