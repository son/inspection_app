import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/text_styles.dart';

class InspectionListItem extends HookConsumerWidget {
  const InspectionListItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '依頼者の名前',
                  style: TextStyles.b16,
                ),
                const SizedBox(height: 4),
                Text(
                  '調査日  東京都 世田谷区 XXX x-x-x-',
                  style: TextStyles.n12.copyWith(color: Colors.black54),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.black26,
            ),
          ],
        ),
      ),
    );
  }
}
