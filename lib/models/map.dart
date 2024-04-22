import 'package:latlong2/latlong.dart';

class MapModel {
  LatLng _latlng;
  String _name;
  String _description;
  bool _showMore;

  MapModel(this._latlng, this._name, this._description, {bool showMore = false})
      : _showMore = showMore;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  LatLng get latlng => _latlng;

  set latlng(LatLng value) {
    _latlng = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  bool get showMore => _showMore;

  set showMore(bool value) {
    _showMore = value;
  }
}
