import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> signIn({required String email, required String password}) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
}

Future<void> registerAccount(
  String email,
  String password,
) async {
  var credential = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password);
}

String? getID() {
  return _auth.currentUser?.uid;
}
