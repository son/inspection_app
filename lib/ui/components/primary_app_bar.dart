import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspection_app/text_styles.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    required this.title,
    this.actions = const [],
  });

  final String title;
  final List<Widget> actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light, // for iOS
        statusBarIconBrightness: Brightness.light, // for Android
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black87,
      title: Text(
        title,
        style: TextStyles.b16,
      ),
      actions: actions,
    );
  }
}
