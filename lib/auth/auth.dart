import 'package:firebase_auth/firebase_auth.dart';
import 'package:cypress/models/user.dart' as cypress_models;

//This file is all about users

class UserData {
  UserData();

  final FirebaseAuth auth = FirebaseAuth.instance;

  cypress_models.User? fromFirebaseToUser(User? user) {
    return user != null
        ? cypress_models.User(
        uid: user.uid, email: user.email ?? "")
        : null;
  }

  Stream<cypress_models.User?> get getUser {
    return auth.authStateChanges().map(fromFirebaseToUser);
  }

  Future signIn(email, password) {
    return auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => fromFirebaseToUser(value.user))
        .catchError((err) => null);
  }

  Future register(email, password) {
    return auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => fromFirebaseToUser(value.user))
        .catchError((err) => null);
  }

  Future signOut() {
    return auth.signOut();
  }
}