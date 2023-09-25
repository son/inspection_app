enum Month {
  january(value: 1),
  february(value: 2),
  march(value: 3),
  april(value: 4),
  may(value: 5),
  june(value: 6),
  july(value: 7),
  august(value: 8),
  september(value: 9),
  october(value: 10),
  november(value: 11),
  december(value: 12);

  const Month({required this.value});

  final int value;
}
