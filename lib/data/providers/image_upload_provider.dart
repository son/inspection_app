import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inspection_app/ui/pages/permission/permission_dialog.dart';
import 'package:permission_handler/permission_handler.dart';

final imagePickProvider =
    Provider<Future<List<String>> Function(BuildContext)>((ref) {
  return (BuildContext context) async {
    final denied = await Permission.photos.isPermanentlyDenied;
    if (denied) {
      // ignore: use_build_context_synchronously
      await PermissionDialog.show(context);
      return [];
    }

    final status = await Permission.photos.request();
    if (!status.isGranted && !status.isLimited) {
      // ignore: use_build_context_synchronously
      await PermissionDialog.show(context);
      return [];
    }

    return ImagePicker()
        .pickMultiImage(imageQuality: 20)
        .then((value) => value.map((file) => file.path).toList());
  };
});
