import 'package:flutter/cupertino.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    super.key,
    this.title,
    required this.child,
    this.axis = Axis.horizontal,
  });

  final String? title;
  final Widget child;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    final multiline = title?.contains('\n') ?? false;

    if (axis == Axis.vertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            const SizedBox(height: 16),
            Text(
              title!,
              style: TextStyles.n12,
            ),
          ],
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
          if (title != null) ...[
            Text(
              title!,
              style: TextStyles.n12.copyWith(
                height: multiline ? 1.5 : null,
              ),
            ),
          ],
          const SizedBox(width: 16),
          Expanded(child: child),
        ],
      ),
    );
  }
}
