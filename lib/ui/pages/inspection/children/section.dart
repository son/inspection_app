import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/list.dart';
import 'package:inspection_app/text_styles.dart';

class Section extends HookConsumerWidget {
  const Section({
    super.key,
    required this.title,
    this.caption,
    required this.children,
  });

  final String title;
  final String? caption;
  final List<Widget> children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expanded = useState(false);

    return GestureDetector(
      onTap: () {
        expanded.value = !expanded.value;
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          top: 16,
          right: 16,
          bottom: expanded.value ? 0 : 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.b14,
                    ),
                    // if (!expanded.value)
                    //   Text(
                    //     caption,
                    //     style: TextStyles.n10.copyWith(color: Colors.grey),
                    //   ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black26,
                  ),
                  child: Icon(
                    expanded.value
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            if (expanded.value) ...[
              const SizedBox(height: 16),
              ...children.interleave(
                Container(
                  height: 0.3,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
