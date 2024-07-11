import 'package:graph_ql_flutter/core/typedefs.dart';
import 'package:graph_ql_flutter/domain/entities/user/entities/geo_entity.dart';

class GeoModel extends Geo {
  GeoModel({
    required super.lat,
    required super.lng,
  });

  factory GeoModel.fromJson(JSON json) {
    return GeoModel(lat: json['lat'] as double, lng: json['lng'] as double);
  }
}
