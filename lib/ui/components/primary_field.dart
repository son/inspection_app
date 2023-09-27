import 'package:flutter/material.dart';
import 'package:inspection_app/text_styles.dart';

class PrimaryField extends StatelessWidget {
  const PrimaryField({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            const Spacer(),
            Text(
              text,
              style: TextStyles.n14,
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
