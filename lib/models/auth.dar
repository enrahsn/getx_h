import 'package:firebaseauth/firebaseauth.dart';

class Auth {
  final auth = FirebaseAuth.instance;

  Future<UserCredential> signUp(String email, String password) async {
    final authResult = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return authResult;
  }

  Future<UserCredential> signIn(String email, String password) async {
    final authResult =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return authResult;
  }
}
/*
Starting from Version firebaseauth 0.18.0:
FirebaseUser has been changed to User

AuthResult has been changed to UserCredential

GoogleAuthProvider.getCredential() has been changed to GoogleAuthProvider.credential()

onAuthStateChanged which notifies about changes to the user's sign-in state was replaced with authStateChanges()

currentUser() which is a method to retrieve the currently logged in user, was replaced with the property currentUser and it no longer returns a Future<FirebaseUser>
*/
