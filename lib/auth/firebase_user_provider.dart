import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UrFitnessFirebaseUser {
  UrFitnessFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

UrFitnessFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UrFitnessFirebaseUser> urFitnessFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UrFitnessFirebaseUser>(
        (user) => currentUser = UrFitnessFirebaseUser(user));
