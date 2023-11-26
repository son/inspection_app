import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class PrimaryTextField extends HookConsumerWidget {
  const PrimaryTextField({
    super.key,
    required this.onChange,
    this.initialText = '',
    this.hintText = '',
    this.fixedText = '',
    this.maxLines = 1,
    this.textAlign = TextAlign.end,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
  });

  final String initialText;
  final Function(String) onChange;
  final String hintText;
  final String fixedText;
  final int maxLines;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    useEffect(() {
      controller.text = initialText;
      return null;
    }, []);

    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );

    final child = TextField(
      controller: controller,
      style: TextStyles.n14,
      maxLines: maxLines,
      minLines: 1,
      onChanged: onChange,
      cursorColor: Colors.blueAccent,
      textAlign: textAlign,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
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
