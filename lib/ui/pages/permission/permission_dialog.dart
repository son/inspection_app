import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/round_button.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionDialog extends HookConsumerWidget {
  const PermissionDialog._({required this.title});
  final String title;

  static Future<void> show({
    required BuildContext context,
    required String title,
  }) =>
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => PermissionDialog._(title: title),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '設定の変更が必要です',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 32),
              RoundButton(
                title: '設定アプリを開く',
                textColor: Colors.white,
                backgroundColor: Colors.green,
                onTap: () {
                  openAppSettings();
                },
              ),
              const SizedBox(height: 16),
              RoundButton(
                title: 'やめておく',
                textColor: Colors.black,
                backgroundColor: Colors.black26,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
