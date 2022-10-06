import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class TodoBlogStarter1FirebaseUser {
  TodoBlogStarter1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TodoBlogStarter1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TodoBlogStarter1FirebaseUser> todoBlogStarter1FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TodoBlogStarter1FirebaseUser>(
      (user) {
        currentUser = TodoBlogStarter1FirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
