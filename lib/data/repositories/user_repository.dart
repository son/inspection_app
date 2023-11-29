import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepository(
    ref: ref,
    firestore: FirebaseFirestore.instance,
    auth: FirebaseAuth.instance,
  ),
);

class UserRepository {
  const UserRepository({
    required this.ref,
    required this.firestore,
    required this.auth,
  });

  final Ref ref;
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  User? getAuthUser() {
    return auth.currentUser;
  }

  Stream<User?> authUserStream() {
    return auth.userChanges();
  }

  Future<User?> createAnonymousUser() {
    return auth.signInAnonymously().then((credential) => credential.user);
  }

  Future<void> createUser(String userId) {
    return firestore.collection('users').doc(userId).set({
      'userId': userId,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
