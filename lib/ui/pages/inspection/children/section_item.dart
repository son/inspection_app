import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    super.key,
    this.title,
    required this.child,
    this.axis = Axis.horizontal,
    this.strikeThrough = false,
  });

  final String? title;
  final Widget child;
  final Axis axis;
  final bool strikeThrough;

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
              style: strikeThrough
                  ? TextStyles.n12.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.black38,
                    )
                  : TextStyles.n12.copyWith(
                      decoration: TextDecoration.none,
                    ),
            ),
          ],
          AbsorbPointer(
            absorbing: strikeThrough,
            child: child,
          )
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
              style: strikeThrough
                  ? TextStyles.n12.copyWith(
                      height: multiline ? 1.5 : null,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.black38,
                    )
                  : TextStyles.n12.copyWith(
                      height: multiline ? 1.5 : null,
                      decoration: TextDecoration.none,
                    ),
            ),
          ],
          const SizedBox(width: 16),
          Expanded(
            child: AbsorbPointer(
              absorbing: strikeThrough,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
