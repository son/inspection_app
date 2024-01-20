import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/utils/list.dart';
import 'package:inspection_app/ui/components/size_calculator.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class MenuTapGesture extends StatelessWidget {
  const MenuTapGesture({
    super.key,
    required this.child,
    required this.items,
  });
  final Widget child;
  final List<MenuItem> items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (detail) async {
        await _Menu.show(
          context: context,
          items: items,
          anchorPoint: detail.globalPosition,
        );
      },
      child: AbsorbPointer(
        child: child,
      ),
    );
  }
}

class _Menu extends HookConsumerWidget {
  const _Menu._({required this.items, required this.anchorPoint});
  final List<MenuItem> items;
  final Offset anchorPoint;

  static Future<void> show({
    required BuildContext context,
    required List<MenuItem> items,
    required Offset anchorPoint,
  }) {
    return showDialog(
      context: context,
      barrierColor: Colors.transparent,
      anchorPoint: anchorPoint,
      builder: (context) {
        return _Menu._(items: items, anchorPoint: anchorPoint);
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuSize = useState(const Size(100, 50));

    return Stack(
      children: [
        Positioned(
          top: anchorPoint.dy - 50,
          left: () {
            final l = (anchorPoint.dx - 16) - (menuSize.value.width / 2);
            final r = MediaQuery.sizeOf(context).width -
                (menuSize.value.width + 16 * 2);
            return min(max(l, 16.0), r);
          }(),
          child: Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 25,
                  blurRadius: 50,
                ),
              ],
            ),
            child: SizeCalculator(
              onChange: (size) {
                menuSize.value = size;
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: items
                    .map<Widget>(
                      (e) => e,
                    )
                    .toList()
                    .interleave(
                      Container(
                        color: Colors.black26,
                        width: menuSize.value.width,
                        height: 0.5,
                      ),
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
  });
  final String title;
  final Widget? icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: icon!,
              ),
            Text(
              title,
              style: TextStyles.b14,
            ),
          ],
        ),
      ),
    );
  }
}
