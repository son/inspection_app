import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class MenuSheet extends HookConsumerWidget {
  const MenuSheet({
    super.key,
    required this.title,
    required this.notApplicable,
    required this.onTapAllPassed,
    required this.onTapNotApplicable,
  });

  final String title;
  final bool notApplicable;
  final Function() onTapAllPassed;
  final Function() onTapNotApplicable;

  static Future<void> show({
    required BuildContext context,
    required String title,
    required bool notApplicable,
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
        title: title,
        notApplicable: notApplicable,
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
              title,
              style: TextStyles.b12,
            ),
          ),
          const SizedBox(height: 16),
          ...<({String title, Widget icon, Function() onTap})>[
            (
              title: '全て問題なし',
              icon: const Icon(
                Icons.check_rounded,
                color: Colors.blueAccent,
              ),
              onTap: onTapAllPassed,
            ),
            notApplicable
                ? (
                    title: '該当あり',
                    icon: const Icon(
                      Icons.circle_outlined,
                      color: Colors.redAccent,
                    ),
                    onTap: onTapNotApplicable,
                  )
                : (
                    title: '該当なし',
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Colors.black38,
                    ),
                    onTap: onTapNotApplicable,
                  ),
          ]
              .map((item) => _Item(
                    title: item.title,
                    icon: item.icon,
                    onTap: item.onTap,
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
  final Widget icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
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
