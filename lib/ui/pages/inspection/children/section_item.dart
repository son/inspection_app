import 'package:flutter/cupertino.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

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
    final multiline = title.contains('\n');

    if (axis == Axis.vertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
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

    return Padding(
      padding: multiline
          ? const EdgeInsets.symmetric(
              vertical: 8,
            )
          : EdgeInsets.zero,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyles.n14.copyWith(
              height: multiline ? 1.5 : null,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: child),
        ],
      ),
    );
  }
}
