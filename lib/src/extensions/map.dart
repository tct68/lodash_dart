import '../utils/map.dart';

extension MapEx on Map {
  T get<T>(String path, {T? defaultValue}) {
    return MapUtils.get<T>(this, path, defaultValue: defaultValue);
  }

  void set<T>(String path, T value) {
    MapUtils.create(this, path.split('.'), value);
  }
}
