import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/round_button.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionDialog extends HookConsumerWidget {
  const PermissionDialog._();

  static Future<void> show(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const PermissionDialog._(),
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
              const Text(
                '設定アプリを開いて「写真」・「カメラ」の使用を許可してください',
                textAlign: TextAlign.center,
                style: TextStyle(
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
