import 'dart:math';

import 'package:flutter/cupertino.dart';
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
    this.title,
  });
  final Widget child;
  final List<MenuItem> items;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (detail) async {
        await _Menu.show(
          context: context,
          items: items,
          anchorPoint: detail.globalPosition,
          title: title,
        );
      },
      child: AbsorbPointer(
        child: child,
      ),
    );
  }
}

class _Menu extends HookConsumerWidget {
  const _Menu._({
    required this.items,
    required this.anchorPoint,
    this.title,
  });
  final List<MenuItem> items;
  final Offset anchorPoint;
  final String? title;

  static Future<void> show({
    required BuildContext context,
    required List<MenuItem> items,
    required Offset anchorPoint,
    String? title,
  }) {
    return showDialog(
      context: context,
      barrierColor: Colors.transparent,
      anchorPoint: anchorPoint,
      builder: (context) {
        return _Menu._(
          items: items,
          anchorPoint: anchorPoint,
          title: title,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuSize = useState<Size?>(null);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: min(
            anchorPoint.dy - 50,
            (MediaQuery.sizeOf(context).height - kToolbarHeight) -
                (menuSize.value?.height ?? 0 + 50),
          ),
          left: () {
            final l = (anchorPoint.dx - 16) - (menuSize.value?.width ?? 0 / 2);
            final r = MediaQuery.sizeOf(context).width -
                (menuSize.value?.width ?? 0 + 16 * 2);
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
            child: SingleChildScrollView(
              child: SizeCalculator(
                onChange: (size) {
                  menuSize.value = size;
                },
                child: SizedBox(
                  width: menuSize.value?.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (title != null)
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            title!,
                            style: TextStyles.b10,
                          ),
                        ),
                      ...items,
                    ].interleave(
                      Container(
                        color: Colors.black26,
                        height: 0.5,
                      ),
                    ),
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
    this.destructive = false,
    this.bold = false,
  });
  final String title;
  final Widget? icon;
  final bool destructive;
  final bool bold;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.pop(context);
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: icon!,
              ),
            Text(
              title,
              style: TextStyles.n14.copyWith(
                color: destructive ? Colors.redAccent : Colors.black87,
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
