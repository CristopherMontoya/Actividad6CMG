import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ActividadCMG6FirebaseUser {
  ActividadCMG6FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ActividadCMG6FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ActividadCMG6FirebaseUser> actividadCMG6FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ActividadCMG6FirebaseUser>(
            (user) => currentUser = ActividadCMG6FirebaseUser(user));
