extension DateExtensions on DateTime {
  String ymd() {
    return '$year年 $month月 $day日';
  }

  String hm() {
    return '$hour : ${minute.toString().padLeft(2, '0')}';
  }
}
