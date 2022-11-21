import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepoStudent {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final userRef = FirebaseFirestore.instance.collection('UserDetails');
  Future<String> createUser(
      {String? email, String? password, String? fname, String? lname}) async {
    try {
      final UserCredential = await _auth.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      await userRef.doc(UserCredential.user!.uid).set({
        'user_id': UserCredential.user!.uid,
        'first_name': fname,
        'last_name': lname,
        'email': email,
        'password': password,
        'profile_picture': '',
      });

      return 'true';
    } on FirebaseAuthException catch (e) {
      //print('----------------------------------------------------------------');
      // print(e.code);
      return e.code;
    }
  }
}
