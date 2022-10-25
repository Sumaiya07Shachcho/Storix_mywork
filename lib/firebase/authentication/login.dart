import 'package:firebase_auth/firebase_auth.dart';

class Login {
  final userEmail;
  final UserPassword;

  Login({required this.userEmail, this.UserPassword});

  Future<void> userLogin() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEmail,
        password: UserPassword,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
