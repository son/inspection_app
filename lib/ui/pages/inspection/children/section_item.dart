import 'package:flutter/cupertino.dart';
import 'package:inspection_app/text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    super.key,
    required this.title,
    required this.child,
    this.axis = Axis.horizontal,
  });

  final String title;
  final Widget child;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.vertical) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyles.n14,
          ),
          child,
        ],
      );
    }

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
