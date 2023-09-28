extension DateExtensions on DateTime {
  String ymd() => '$year年 $month月 $day日';

  String hm() => '$hour : ${minute.toString().padLeft(2, '0')}';
}
