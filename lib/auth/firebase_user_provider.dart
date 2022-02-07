import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LawnAdminFirebaseUser {
  LawnAdminFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

LawnAdminFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LawnAdminFirebaseUser> lawnAdminFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<LawnAdminFirebaseUser>(
        (user) => currentUser = LawnAdminFirebaseUser(user));
