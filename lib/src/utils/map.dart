class MapUtils {
  static T get<T>(Map map, String path, {T? defaultValue}) {
    final arr = path.split('.');
    if (arr.isNotEmpty) {
      dynamic temp = map[arr[0]];
      if (temp != null) {
        for (var i = 1; i < arr.length; i++) {
          final String key = arr[i];

          if ((temp is Map && !temp.containsKey(key)) || temp is! Map || temp[key] == null) {
            return defaultValue ?? null as T;
          }

          temp = temp[key];
        }
      }

      return temp as T;
    } else {
      return defaultValue ?? null as T;
    }
  }

  static Map create(Map map, List<String> nestedPath, dynamic value) {
    if (nestedPath.length == 1) {
      map[nestedPath[0]] = value;
    } else {
      final key = nestedPath.removeAt(0);
      if (!map.containsKey(key) || map[key] == null || map[key] is! Map) {
        map[key] = {};
      }
      create(map[key], nestedPath, value);
    }

    return map;
  }
}
