import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/auth/core.dart';
import 'package:uuid/uuid.dart';

final imageRepositoryProvider = Provider(
  (ref) => ImageRepository(
    ref: ref,
    storage: FirebaseStorage.instance,
  ),
);

class ImageRepository {
  const ImageRepository({
    required this.ref,
    required this.storage,
  });

  final Ref ref;
  final FirebaseStorage storage;

  Future<String?> uploadImage(String path) async {
    try {
      final userId = ref.read(userIdProvider);
      if (userId == null) return null;
      final date = DateTime.now().toString();
      final imageFile = File(path);
      final extension = path.substring(path.lastIndexOf('.'));
      final uuid = const Uuid().v4();
      final storageRef = storage.ref('$userId/$date-$uuid.$extension');
      await storageRef.putFile(imageFile);
      return storageRef.getDownloadURL();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
