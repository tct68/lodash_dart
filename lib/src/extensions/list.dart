extension ListEx on List {
  T at<T>(int index) {
    if (index >= length || index < 0) {
      return null as T;
    }

    return this[index] as T;
  }
}

extension ListDynamicEx on List<dynamic> {
  String stringAt(int index) {
    if (index >= length || index < 0) {
      return "";
    }

    final String at = this[index];
    return at;
  }
}
