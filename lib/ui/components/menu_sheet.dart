import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class MenuSheet extends HookConsumerWidget {
  const MenuSheet({
    super.key,
    required this.onTapAllPassed,
    required this.onTapNotApplicable,
  });

  final Function() onTapAllPassed;
  final Function() onTapNotApplicable;

  static Future<void> show({
    required BuildContext context,
    required Function() onTapAllPassed,
    required Function() onTapNotApplicable,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (_) => MenuSheet(
        onTapAllPassed: onTapAllPassed,
        onTapNotApplicable: onTapNotApplicable,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '「基礎」の項目全てを一括で設定します',
              style: TextStyles.b12,
            ),
          ),
          const SizedBox(height: 16),
          ...<({String title, IconData icon, Function() onTap})>[
            (
              title: '全て問題なし',
              icon: Icons.add,
              onTap: onTapAllPassed,
            ),
            (
              title: '該当なし',
              icon: Icons.close_rounded,
              onTap: onTapNotApplicable,
            ),
          ]
              .map((item) => _Item(
                    title: item.title,
                    icon: item.icon,
                    onTap: () {
                      Navigator.of(context);
                      item.onTap();
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black87,
            ),
            const SizedBox(width: 32),
            Text(
              title,
              style: TextStyles.n16,
            ),
          ],
        ),
      ),
    );
  }
}
