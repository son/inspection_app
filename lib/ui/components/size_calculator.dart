import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SizeCalculator extends HookConsumerWidget {
  const SizeCalculator({
    super.key,
    required this.child,
    required this.onChange,
  });

  final Widget child;
  final Function(Size) onChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetKey = useState(GlobalKey());
    final oldSize = useState<Size?>(null);
    useAutomaticKeepAlive();

    postFrameCallback(_) {
      final context = widgetKey.value.currentContext;
      if (context == null) return;
      final newSize = context.size;
      if (oldSize.value == newSize) return;
      oldSize.value = newSize;
      if (newSize != null) {
        onChange(newSize);
      }
    }

    SchedulerBinding.instance.addPostFrameCallback(postFrameCallback);

    return Container(
      key: widgetKey.value,
      child: child,
    );
  }
}
