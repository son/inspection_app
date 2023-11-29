import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Root extends HookConsumerWidget {
  const Root({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userId = ref.watch(userIdProvider);
    //
    // useEffect(() {
    //   return null;
    // }, [userId]);

    return child;
  }
}
