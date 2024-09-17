import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import '../models/user.dart';
import '../models/user_entity.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;
  final usersCollection = FirebaseFirestore.instance.collection('users');

  UserRepository({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Stream<MyUser> get user {
    return _firebaseAuth.authStateChanges().switchMap((firebaseUser) async* {
      if (firebaseUser == null) {
        yield MyUser.empty;
      } else {
        try {
          final userDoc = await usersCollection.doc(firebaseUser.uid).get();
          if (userDoc.exists) {
            yield MyUser.fromEntity(MyUserEntity.fromDocument(userDoc.data()!));
          } else {
            yield MyUser.empty;
          }
        } catch (e) {
          log('Failed to get user: $e');
          yield MyUser.empty;
        }
      }
    });
  }

  Future<void> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<MyUser> signUp(MyUser myUser, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: myUser.email,
        password: password,
      );

      myUser.userId = userCredential.user!.uid;
      await setUserData(myUser);
      return myUser;
    } catch (e) {
      log('Sign-up failed: $e');
      rethrow;
    }
  }

  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> setUserData(MyUser myUser) async {
    try {
      await usersCollection
          .doc(myUser.userId)
          .set(myUser.toEntity().toDocument());
    } catch (e) {
      log('Failed to set user data: $e');
      rethrow;
    }
  }
}
