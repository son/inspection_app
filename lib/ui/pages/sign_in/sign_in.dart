import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/auth/core.dart';
import 'package:inspection_app/ui/components/text_styles.dart';
import 'package:inspection_app/ui/pages/inspection_list/inspection_list_page.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(userIdProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (userId == null) return;
        Navigator.of(context).pushReplacement(InspectionListPage.route());
      });
      return null;
    }, [userId]);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(32),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Text(
                '自動ログイン中',
                style: TextStyles.n16,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
