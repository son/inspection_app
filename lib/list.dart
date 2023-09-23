extension Flatten<T> on Iterable<Iterable<T>> {
  Iterable<T> flatten() => [for (final list in this) ...list];
}

extension Interleave<T> on List<T> {
  List<T> interleave(T t) {
    if (length <= 1) {
      return [...this];
    }
    return map((e) => [e, t]).flatten().toList().sublist(0, length * 2 - 1);
  }
}
