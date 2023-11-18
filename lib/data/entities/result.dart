// ignore_for_file: constant_identifier_names

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

enum Necessity {
  detached(label: '一戸建ての住宅'),
  apartmentUnitsPlan(label: '共同/住戸型：長期修繕計画あり'),
  apartmentUnitsNoPlan(label: '共同/住戸型：長期修繕計画なし'),
  apartmentBuilding(label: '共同/住棟型');

  const Necessity({required this.label});

  final String label;
}

const NECESSITY = [
  '一戸建ての住宅',
  '共同/住戸型：長期修繕計画あり',
  '共同/住戸型：長期修繕計画なし',
  '共同/住棟型',
];
