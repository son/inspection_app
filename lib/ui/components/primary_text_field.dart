import 'package:flutter/material.dart';
import 'package:inspection_app/text_styles.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    required this.onChange,
    this.hintText = '',
    this.fixedText = '',
    this.maxLines = 1,
    this.textAlign = TextAlign.end,
  });

  final Function(String) onChange;
  final String hintText;
  final String fixedText;
  final int maxLines;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );

    final child = TextField(
      style: TextStyles.n14,
      maxLines: maxLines,
      minLines: 1,
      onChanged: onChange,
      cursorColor: Colors.blueAccent,
      textAlign: textAlign,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.n12.copyWith(color: Colors.grey),
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        border: border,
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        focusColor: Colors.white,
        hoverColor: Colors.white,
        fillColor: Colors.white,
        filled: true,
      ),
    );

    if (fixedText.isNotEmpty) {
      return Row(
        children: [
          Expanded(
            child: child,
          ),
          const SizedBox(width: 8),
          Text(
            fixedText,
            style: TextStyles.n14,
          ),
        ],
      );
    }

    return child;
  }
}
