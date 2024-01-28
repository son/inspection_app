import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/status.dart';
import 'package:inspection_app/data/utils/list.dart';
import 'package:inspection_app/ui/components/status_label.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class Section extends HookConsumerWidget {
  const Section({
    super.key,
    required this.title,
    required this.children,
    this.padding = const EdgeInsets.all(16),
    this.actions = const [],
    this.actionsExpandedOnly = const [],
    this.complete = false,
  });

  final String title;
  final bool complete;
  final List<Widget> children;
  final EdgeInsets padding;
  final List<Widget> actions;
  final List<Widget> actionsExpandedOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expanded = useState(false);

    return GestureDetector(
      onTap: () {
        expanded.value = !expanded.value;
      },
      child: Container(
        padding: padding.copyWith(
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
                    StatusLabel(
                      status: complete ? Status.complete : Status.incomplete,
                    ),
                  ],
                ),
                const Spacer(),
                if (actionsExpandedOnly.isNotEmpty && expanded.value) ...[
                  ...actionsExpandedOnly
                      .interleave(const SizedBox(width: 8))
                      .toList(),
                  const SizedBox(width: 8),
                ],
                if (actions.isNotEmpty) ...[
                  ...actions.interleave(const SizedBox(width: 8)).toList(),
                  const SizedBox(width: 8),
                ],
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
