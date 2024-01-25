// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_list_provider.dart';
import 'package:inspection_app/ui/components/confirm_dialog.dart';
import 'package:inspection_app/ui/components/menu_tap_gesture.dart';
import 'package:inspection_app/ui/components/notification_bar.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class MenuButton extends HookConsumerWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const dotSize = 3.0;

    final id = ref.watch(inspectionIdProvider);
    final controller = ref.read(inspectionListProvider.notifier);

    return MenuTapGesture(
      items: [
        MenuItem(
          icon: const Icon(Icons.warning_rounded, color: Colors.black87),
          title: '不具合・不備を報告する',
          onTap: () {},
        ),
        MenuItem(
          icon: const Icon(Icons.delete, color: Colors.redAccent),
          title: '削除する',
          destructive: true,
          onTap: () async {
            final canGo = await ConfirmDialog.show(
              context: context,
              title: '削除しますか？',
              caption: '削除したデータは復元できません。',
            );
            if (!canGo) return;
            await controller.deleteInspection(id);
            Navigator.of(context).pop();
            NotificationBar.showDelete();
          },
        ),
      ],
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.black12, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: dotSize,
                  width: dotSize,
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 2),
                Container(
                  height: dotSize,
                  width: dotSize,
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 2),
                Container(
                  height: dotSize,
                  width: dotSize,
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
