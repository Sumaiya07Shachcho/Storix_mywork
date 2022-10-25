import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp {
  final userEmail;
  final userPassword;
  final userName;

  SignUp(
      {required this.userName,
      required this.userEmail,
      required this.userPassword});

  Future<void> userRegister() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );

      _postData(); ///only call when user register.
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print('The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for this email');
      }
    } catch (e) {
      print(e);
    }
  }

///==========================================> post user data to firestore.
  Future<void> _postData() {
    return FirebaseFirestore.instance
        .collection('userInfo')
        .add({
          'email': userEmail.toString(),
          'name': userName.toString(),
        })
        .then((value) => print("user add with"))
        .catchError((error) => print('Failed to add user: $error'));
  }
}
