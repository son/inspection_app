enum Result {
  none(label: '未調査'),
  passed(label: '問題なし'),
  failure(label: '問題あり');

  const Result({required this.label});

  final String label;
}

enum Direction {
  south(label: '南'),
  north(label: '北'),
  west(label: '西'),
  east(label: '東');

  const Direction({required this.label});

  final String label;
}

enum Coverage {
  almost(label: '９割〜'),
  most(label: '５〜９割'),
  some(label: '１〜５割'),
  few(label: '〜１割'),
  incapable(label: '調査できなかった'),
  unapproved(label: '不実施（依頼者合意とれず）');

  const Coverage({required this.label});

  final String label;
}
