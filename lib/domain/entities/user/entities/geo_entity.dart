class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  final double lat;
  final double lng;

  @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }
}
