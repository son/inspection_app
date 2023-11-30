import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/auth/core.dart';
import 'package:inspection_app/data/providers/auth/sign_in.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class Root extends HookConsumerWidget {
  const Root({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(userIdProvider);

    return Column(
      children: [
        if (userId == null)
          GestureDetector(
            onTap: () async {
              await ref.read(signInAnonymously)();
            },
            child: Container(
              width: double.infinity,
              color: Colors.red,
              padding: EdgeInsets.only(
                top: MediaQuery.paddingOf(context).top + 16,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Text(
                '通信環境のいいとこいけ（タップでログイン）',
                style: TextStyles.b14.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        Expanded(child: child),
      ],
    );
  }
}
