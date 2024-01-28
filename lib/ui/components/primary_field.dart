import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class PrimaryField extends StatelessWidget {
  const PrimaryField({
    super.key,
    required this.text,
    required this.onTap,
    this.color = Colors.black87,
  });

  final String text;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            const Spacer(),
            Text(
              text.isNotEmpty ? text : '未入力',
              style: text.isNotEmpty && text != '未調査'
                  ? TextStyles.b14.copyWith(
                      color: color,
                    )
                  : TextStyles.b14.copyWith(
                      color: Colors.grey,
                    ),
              textAlign: TextAlign.end,
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
