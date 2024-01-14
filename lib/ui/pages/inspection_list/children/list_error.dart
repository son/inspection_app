import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/round_button.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class ListError extends HookConsumerWidget {
  const ListError({
    super.key,
    required this.error,
    required this.stackTrace,
    required this.onTapRetry,
  });

  final Object error;
  final StackTrace stackTrace;
  final Function() onTapRetry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      // TODO: Clashlyticsでエラー送信
      return null;
    }, []);

    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 32),
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              color: Colors.red,
              size: 48,
            ),
            const SizedBox(height: 16),
            Text(
              'エラーが発生しました',
              style: TextStyles.b16,
            ),
            const SizedBox(height: 4),
            Text(
              '時間をおいて再度お試しください',
              style: TextStyles.b12.copyWith(
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 16),
            RoundButton(
              title: 'リトライする',
              backgroundColor: Colors.white,
              textColor: Colors.black87,
              borderColor: Colors.black87,
              onTap: onTapRetry,
            ),
          ],
        ),
      ),
    );
  }
}
