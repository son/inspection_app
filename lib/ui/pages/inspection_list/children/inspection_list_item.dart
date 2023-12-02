import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class InspectionListItem extends HookConsumerWidget {
  const InspectionListItem({
    super.key,
    required this.inspection,
    required this.onTap,
  });

  final Inspection inspection;
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  () {
                    final client = inspection.overview.clientName;
                    if (client == null) {
                      return '依頼者未入力';
                    }
                    return '$client 様';
                  }(),
                  style: TextStyles.b16,
                ),
                const SizedBox(height: 4),
                Text(
                  '${inspection.createdAt.year}年 ${inspection.createdAt.month}/${inspection.createdAt.day}　${inspection.createdAt.hour}:${inspection.createdAt.minute}',
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
