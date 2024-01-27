// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/notification_bar.dart';
import 'package:inspection_app/ui/pages/permission/permission_dialog.dart';

final addressProvider =
    Provider<Future<Placemark?> Function(BuildContext)>((ref) {
  return (BuildContext context) async {
    final denied = await Geolocator.checkPermission()
        .then((permission) => permission == LocationPermission.deniedForever)
        .catchError((e) => false);
    if (denied) {
      await PermissionDialog.show(
        context: context,
        title: '設定アプリを開いて「位置情報」の使用を許可してください',
      );
      return null;
    }

    final hasPermission = await Geolocator.requestPermission()
        .then((permission) => [
              LocationPermission.whileInUse,
              LocationPermission.always,
            ].contains(permission))
        .catchError((e) => false);
    if (!hasPermission) {
      await PermissionDialog.show(
        context: context,
        title: '設定アプリを開いて「位置情報」の使用を許可してください',
      );
      return null;
    }

    final cancel = NotificationBar.showLoader(title: '現在地を取得中');

    try {
      final location = await Geolocator.getCurrentPosition(
        timeLimit: const Duration(seconds: 5),
      );
      final placemarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
        localeIdentifier: 'ja_JP',
      );
      return placemarks.first;
    } catch (e) {
      return null;
    } finally {
      cancel();
    }
  };
});
