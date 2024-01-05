import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/round_button.dart';

import 'text_styles.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.caption,
  });
  final String title;
  final String caption;

  static Future<bool> show({
    required BuildContext context,
    required String title,
    required String caption,
  }) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => ConfirmDialog(title: title, caption: caption),
    ).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyles.b16,
              ),
              const SizedBox(height: 8),
              Text(
                caption,
                style: TextStyles.n12,
              ),
              const SizedBox(height: 32),
              RoundButton(
                title: 'OK',
                textColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                onTap: () => Navigator.of(context).pop(true),
              ),
              const SizedBox(height: 16),
              RoundButton(
                title: 'もどる',
                textColor: Colors.black87,
                backgroundColor: Colors.transparent,
                onTap: () => Navigator.of(context).pop(false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
