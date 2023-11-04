import 'package:flutter/material.dart';
import 'package:inspection_app/data/utils/list.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class LargeSection extends StatelessWidget {
  const LargeSection({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.b14.copyWith(color: Colors.black54),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          width: double.infinity,
          child: Column(
            children: children.interleave(
              Container(
                height: 0.3,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
