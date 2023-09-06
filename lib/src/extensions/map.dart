extension MapEx on Map {
  T get<T>(String path) {
    final arr = path.split('.');
    if (arr.isNotEmpty) {
      dynamic temp = this[arr[0]];
      if (temp != null) {
        for (var i = 1; i < arr.length; i++) {
          final String key = arr[i];

          if ((temp is Map && !temp.containsKey(key)) || temp is! Map || temp[key] == null) {
            return null as T;
          }

          temp = temp[key];
        }
      }

      return temp as T;
    } else {
      return null as T;
    }
  }
}
