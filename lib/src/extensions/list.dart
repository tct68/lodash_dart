extension ListEx on List {
  T first<T>() {
    if (length == 0) {
      return null as T;
    }

    return this[0];
  }

  T last<T>() {
    if (length == 0) {
      return null as T;
    }

    return this[length - 1];
  }
}
