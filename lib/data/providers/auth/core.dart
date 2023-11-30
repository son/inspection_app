import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/repositories/user_repository.dart';

final authUserProvider = StreamProvider<User?>(
  (ref) => ref.watch(userRepositoryProvider).authUserStream(),
);

final signedIn = Provider(
  (ref) => ref.watch(authUserProvider).asData?.value != null,
);

final userIdProvider = Provider(
  (ref) => ref.watch(authUserProvider).asData?.value?.uid,
);
