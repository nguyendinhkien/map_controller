import 'package:geopoint/geopoint.dart';
// import 'package:latlong/latlong.dart' as lat_lng;
import 'package:latlong2/latlong.dart';

extension GeoSerieLatLng2 on GeoSerie {
  List<LatLng> toLatLng2({bool ignoreErrors = false}) {
    final points = <LatLng>[];
    for (final geoPoint in geoPoints) {
      try {
        points.add(LatLng(geoPoint.point.latitude, geoPoint.point.longitude));
        // ignore: avoid_catches_without_on_clauses
      } catch (_) {
        if (!ignoreErrors) {
          rethrow;
        }
      }
    }
    return points;
  }
}

// extension PointLatLng2 on lat_lng.LatLng {
//   LatLng toLatLng2() {
//     return LatLng(this.latitude, this.longitude);
//   }
// }
