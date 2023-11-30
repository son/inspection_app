import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  const TextStyles._();

  static final _default = GoogleFonts.notoSansJp(
    color: Colors.black87,
    textStyle: const TextStyle(overflow: TextOverflow.ellipsis),
    decoration: TextDecoration.none,
  );

  static final n10 = _default.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: 10,
  );

  static final n12 = _default.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static final n14 = _default.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static final n16 = _default.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static final b12 = _default.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  static final b14 = _default.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static final b16 = _default.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
}
