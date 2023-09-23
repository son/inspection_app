import 'package:flutter/material.dart';
import 'package:inspection_app/text_styles.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    required this.title,
    this.actions = const [],
  });

  final String title;
  final List<Widget> actions;

  static const _borderHeight = 1.0;

  @override
  Size get preferredSize => const Size.fromHeight(
        kToolbarHeight + _borderHeight,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black87,
      title: Text(
        title,
        style: TextStyles.b16,
      ),
      actions: actions,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          height: 0.5,
          width: double.infinity,
          color: Colors.grey,
        ),
      ),
    );
  }
}
