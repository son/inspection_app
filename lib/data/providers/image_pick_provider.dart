// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inspection_app/ui/pages/permission/permission_dialog.dart';
import 'package:permission_handler/permission_handler.dart';

final photoImagePickProvider =
    Provider<Future<List<String>> Function(BuildContext)>((ref) {
  return (BuildContext context) async {
    final denied = await Permission.photos.isPermanentlyDenied;
    if (denied) {
      await PermissionDialog.show(
        context: context,
        title: '設定アプリを開いて「写真」・「カメラ」の使用を許可してください',
      );
      return [];
    }

    final status = await Permission.photos.request();
    if (!status.isGranted && !status.isLimited) {
      await PermissionDialog.show(
        context: context,
        title: '設定アプリを開いて「写真」・「カメラ」の使用を許可してください',
      );
      return [];
    }

    return ImagePicker()
        .pickMultiImage(imageQuality: 20)
        .then((value) => value.map((file) => file.path).toList());
  };
});

final cameraImagePickProvider =
    Provider<Future<String?> Function(BuildContext)>((ref) {
  return (BuildContext context) async {
    final denied = await Permission.photos.isPermanentlyDenied;
    if (denied) {
      await PermissionDialog.show(
        context: context,
        title: '設定アプリを開いて「写真」・「カメラ」の使用を許可してください',
      );
      return null;
    }

    final status = await Permission.photos.request();
    if (!status.isGranted && !status.isLimited) {
      await PermissionDialog.show(
        context: context,
        title: '設定アプリを開いて「写真」・「カメラ」の使用を許可してください',
      );
      return null;
    }

    return ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 20)
        .then((value) => value?.path);
  };
});
