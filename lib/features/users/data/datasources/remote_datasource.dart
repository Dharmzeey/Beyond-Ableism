// class FirebaseUserRepository implements UserRepository {
//   final FirebaseAuth firebaseAuth;

//   FirebaseUserRepository(this.firebaseAuth);

//   @override
//   Future<User> signIn(String email, String password) async {
//     final userCredential = await firebaseAuth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     return User(uid: userCredential.user.uid, email: email);
//   }

//   @override
//   Future<User> signUp(String email, String password) async {
//     final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     return User(uid: userCredential.user.uid, email: email);
//   }
// }
