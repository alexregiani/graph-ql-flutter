import 'package:graph_ql_flutter/core/typedefs.dart';
import 'package:graph_ql_flutter/data/models/user/models/geo_model.dart';
import 'package:graph_ql_flutter/domain/entities/user/entities/address_entity.dart';

class AddressModel extends Address {
  AddressModel({required super.geo});

  factory AddressModel.fromJson(JSON json) {
    return AddressModel(geo: GeoModel.fromJson(json['geo'] as JSON));
  }
}
