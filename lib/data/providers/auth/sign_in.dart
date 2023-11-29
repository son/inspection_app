import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/repositories/user_repository.dart';

import 'core.dart';

enum SignInResult {
  success,
  alreadySignedIn,
  failedToCreateAuthUser,
  failedToCreateFirestoreUser,
}

final signInAnonymously = Provider((ref) {
  return () async {
    if (ref.read(signedIn)) {
      return SignInResult.alreadySignedIn;
    }
    final newAuthUser = await ref
        .read(userRepositoryProvider)
        .createAnonymousUser()
        .catchError((e) => null);
    if (newAuthUser == null) {
      return SignInResult.failedToCreateAuthUser;
    }
    final userId = newAuthUser.uid;
    return ref
        .read(userRepositoryProvider)
        .createUser(userId)
        .then((value) => SignInResult.success)
        .catchError((e) => SignInResult.failedToCreateFirestoreUser);
  };
});
