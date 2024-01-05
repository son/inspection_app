import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/confirm_dialog.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';

class ImagesPage extends HookConsumerWidget {
  const ImagesPage({
    super.key,
    required this.images,
    required this.initialIndex,
    required this.onTapDelete,
  });

  final List<String> images;
  final int initialIndex;
  final Function(String) onTapDelete;

  static Future<void> show({
    required BuildContext context,
    required List<String> images,
    required int initialIndex,
    required Function(String) onTapDelete,
  }) {
    return showModalBottomSheet(
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      enableDrag: true,
      useRootNavigator: true,
      builder: (_) => ImagesPage(
        images: images,
        initialIndex: initialIndex,
        onTapDelete: onTapDelete,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = usePageController();

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.jumpToPage(initialIndex);
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: const PrimaryAppBar(
        brightness: Brightness.dark,
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: images[index],
                fit: BoxFit.fitWidth,
                placeholder: (_, __) => Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: SizedBox(
                      width: 26,
                      height: 26,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.transparent,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                errorWidget: (_, __, ___) => Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.error_outline_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: 32,
            right: 32,
            bottom: MediaQuery.paddingOf(context).bottom + 32,
            child: Row(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    final canGo = await ConfirmDialog.show(
                      context: context,
                      title: '画像を削除しますか?',
                      caption: '削除した画像は元に戻せません。',
                    );
                    if (!canGo) return;
                    onTapDelete(images[controller.page!.toInt()]);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.delete_rounded,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
