import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    this.title = '',
    this.actions = const [],
    this.leading,
    this.brightness = Brightness.light,
  });

  final String title;
  final List<Widget> actions;
  final Widget? leading;
  final Brightness brightness;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: brightness, // for iOS
        statusBarIconBrightness: brightness, // for Android
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black87,
      title: Text(
        title,
        style: TextStyles.b16,
      ),
      leading: leading,
      actions: actions,
    );
  }
}
