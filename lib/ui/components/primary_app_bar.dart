import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    this.title,
    this.actions = const [],
    this.leading,
    this.brightness = Brightness.light,
    this.withBorder = false,
    this.backgroundColor = Colors.transparent,
  });

  final Widget? title;
  final List<Widget> actions;
  final Widget? leading;
  final Brightness brightness;
  final bool withBorder;
  final Color backgroundColor;

  static const _borderHeight = 0.3;

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight + (withBorder ? _borderHeight : 0),
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: brightness, // for iOS
        statusBarIconBrightness: brightness, // for Android
      ),
      backgroundColor: backgroundColor,
      foregroundColor: Colors.black87,
      title: title,
      centerTitle: false,
      leading: leading,
      actions: actions,
      titleSpacing: 0,
      bottom: withBorder
          ? PreferredSize(
              preferredSize: const Size.fromHeight(_borderHeight),
              child: Container(
                height: _borderHeight,
                width: double.infinity,
                color: Colors.black26,
              ),
            )
          : null,
    );
  }
}
