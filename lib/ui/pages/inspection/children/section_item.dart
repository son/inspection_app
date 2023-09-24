import 'package:flutter/cupertino.dart';
import 'package:inspection_app/text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.n14,
        ),
        const SizedBox(width: 16),
        Expanded(child: child),
      ],
    );
  }
}
