import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_list_provider.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

import '../../components/text_styles.dart';
import 'children/inspection_list_item.dart';

class InspectionListPage extends HookConsumerWidget {
  const InspectionListPage._();

  static Route route() => PageRouteBuilder(
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => const InspectionListPage._(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspections = ref.watch(inspectionListProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PrimaryAppBar(title: ''),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.read(inspectionListProvider.notifier).refresh();
        },
        child: ListView.separated(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top + kToolbarHeight + 16,
            left: 16,
            right: 16,
            bottom: 16,
          ),
          itemCount: inspections.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return GestureDetector(
                onTap: () {
                  final inspectionId = ref
                      .read(inspectionListProvider.notifier)
                      .createNewInspection();
                  if (inspectionId == null) {
                    // TODO: エラー出す
                    return;
                  }
                  Navigator.of(context).push(
                    InspectionPage.route(inspectionId: inspectionId),
                  );
                },
                child: Container(
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
                if (index == inspections.length) {
                  return const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  );
                }
                return BorderRadius.zero;
              }(),
              child: InspectionListItem(
                key: ValueKey(index),
                inspection: inspections[index - 1],
                onTap: () {
                  final inspectionId = inspections[index - 1].id;
                  Navigator.of(context).push(
                    InspectionPage.route(inspectionId: inspectionId),
                  );
                },
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
      ),
    );
  }
}
