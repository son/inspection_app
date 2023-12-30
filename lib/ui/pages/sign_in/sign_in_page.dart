import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/auth/core.dart';
import 'package:inspection_app/data/providers/auth/sign_in.dart';
import 'package:inspection_app/ui/components/round_button.dart';
import 'package:inspection_app/ui/components/text_styles.dart';
import 'package:inspection_app/ui/pages/inspection_list/inspection_list_page.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authUserProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (user.asData?.value == null) return;
        Navigator.of(context).pushReplacement(InspectionListPage.route());
      });
      return null;
    }, [user]);

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
            mainAxisSize: MainAxisSize.min,
            children: [
              user.when(
                data: (data) {
                  if (data == null) {
                    return Column(
                      children: [
                        Text(
                          '未ログイン状態です',
                          style: TextStyles.b16,
                        ),
                        const SizedBox(height: 32),
                        RoundButton(
                          title: 'ログインする',
                          textColor: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          onTap: () async {
                            await ref.read(signInAnonymously)();
                          },
                        ),
                      ],
                    );
                  }

                  return Column(
                    children: [
                      Text(
                        '自動ログイン中',
                        style: TextStyles.b16,
                      ),
                      const SizedBox(height: 32),
                      const CircularProgressIndicator(
                        color: Colors.blueAccent,
                      ),
                    ],
                  );
                },
                error: (error, stacktrace) {
                  return Column(
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 50,
                      ),
                      const SizedBox(height: 32),
                      Text(
                        'ログインに失敗しました',
                        style: TextStyles.b16,
                      ),
                      const SizedBox(height: 32),
                      RoundButton(
                        title: 'リトライ',
                        textColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        onTap: () async {
                          await ref.read(signInAnonymously)();
                        },
                      ),
                    ],
                  );
                },
                loading: () {
                  return Column(
                    children: [
                      Text(
                        '自動ログイン中',
                        style: TextStyles.b16,
                      ),
                      const SizedBox(height: 32),
                      const CircularProgressIndicator(
                        color: Colors.blueAccent,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
