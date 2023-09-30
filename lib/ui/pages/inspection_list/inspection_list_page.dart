import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

import '../../components/text_styles.dart';
import 'children/inspection_list_item.dart';

class InspectionListPage extends HookConsumerWidget {
  const InspectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PrimaryAppBar(title: ''),
      body: ListView.separated(
        padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + kToolbarHeight + 16,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add_circle_rounded,
                    color: Colors.black26,
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      '物件調査を追加',
                      style: TextStyles.b16,
                    ),
                  ),
                ],
              ),
            );
          }

          return ClipRRect(
            borderRadius: () {
              if (index == 1) {
                return const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                );
              }
              if (index == 19) {
                return const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                );
              }
              return BorderRadius.zero;
            }(),
            child: InspectionListItem(
              key: ValueKey(index),
              onTap: () => Navigator.of(context).push(InspectionPage.route()),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if (index == 0) {
            return const SizedBox.shrink();
          }
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
