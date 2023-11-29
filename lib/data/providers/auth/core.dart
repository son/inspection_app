import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/repositories/user_repository.dart';

final authUseProvider = StreamProvider<User?>(
  (ref) => ref.watch(userRepositoryProvider).authUserStream(),
);

final signedIn = Provider(
  (ref) => ref.watch(authUseProvider).asData?.value != null,
);

final userIdProvider = Provider(
  (ref) => ref.watch(authUseProvider).asData?.value,
);
