import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/menu_tap_gesture.dart';

class MenuButton extends HookConsumerWidget {
  const MenuButton({
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const dotSize = 3.0;

    return MenuTapGesture(
      title: title,
      items: [
        MenuItem(
          icon: const Icon(Icons.check_rounded, color: Colors.blueAccent),
          title: '全て問題なしに設定',
          onTap: onTapAllPassed,
        ),
        notApplicable
            ? MenuItem(
                icon:
                    const Icon(Icons.circle_outlined, color: Colors.redAccent),
                title: '該当ありに設定',
                onTap: onTapNotApplicable,
              )
            : MenuItem(
                icon: const Icon(Icons.close_rounded, color: Colors.black38),
                title: '該当なしに設定',
                onTap: onTapNotApplicable,
              ),
      ],
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.black26, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: dotSize,
              width: dotSize,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black26,
              ),
            ),
            const SizedBox(width: 2),
            Container(
              height: dotSize,
              width: dotSize,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black26,
              ),
            ),
            const SizedBox(width: 2),
            Container(
              height: dotSize,
              width: dotSize,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
