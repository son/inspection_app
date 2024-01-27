import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class NotificationBar extends StatelessWidget {
  const NotificationBar._({
    required this.title,
    this.description,
    this.icon,
  });

  final String title;
  final String? description;
  final Widget? icon;

  static Function() showError({
    required String title,
    String? description,
  }) {
    return NotificationBar.show(
      title: title,
      description: description,
      icon: const Icon(Icons.error_outline_rounded, color: Colors.redAccent),
    );
  }

  static Function() showSave() {
    return NotificationBar.show(
      title: '変更を保存しました',
      icon: const Icon(Icons.check_box_rounded, color: Colors.greenAccent),
    );
  }

  static Function() showDelete() {
    return NotificationBar.show(
      title: '削除しました',
      icon: const Icon(Icons.delete, color: Colors.redAccent),
    );
  }

  static Function() showLoader({required String title}) {
    return NotificationBar.show(
      title: title,
      icon: const Padding(
        padding: EdgeInsets.only(right: 4),
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }

  static Function() show({
    required String title,
    String? description,
    Widget? icon,
  }) {
    return BotToast.showCustomNotification(
      toastBuilder: (cancel) {
        return NotificationBar._(
          title: title,
          description: description,
          icon: icon,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 50,
            blurRadius: 50,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: icon!,
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyles.b14,
              ),
              if (description != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    description!,
                    style: TextStyles.b12,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
