import 'package:firebase_auth/firebase_auth.dart';
import 'package:skype_clone/resources/firebase_methods.dart';

class FirebaseRepository {
  FirebaseMethods _firebaseMothos = FirebaseMethods();

  Future<FirebaseUser> getCurrentUser() => _firebaseMothos.getCurrentUser();

  Future<FirebaseUser> singIn() => _firebaseMothos.signIn();

  Future<bool> authenticateUser(FirebaseUser user) =>
      _firebaseMothos.authenticateUser(user);

  Future<void> addDataToDb(FirebaseUser user) =>
      _firebaseMothos.addDataToDb(user);

  Future<void> singOut() => _firebaseMothos.singOut();
}
