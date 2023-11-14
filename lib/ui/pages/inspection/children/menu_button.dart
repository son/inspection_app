import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/menu_sheet.dart';

class MenuButton extends HookConsumerWidget {
  const MenuButton({
    super.key,
    required this.onTapAllPassed,
    required this.onTapNotApplicable,
  });

  final Function() onTapAllPassed;
  final Function() onTapNotApplicable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const dotSize = 3.0;

    return GestureDetector(
      onTap: () => MenuSheet.show(
        context: context,
        onTapAllPassed: onTapAllPassed,
        onTapNotApplicable: onTapNotApplicable,
      ),
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
