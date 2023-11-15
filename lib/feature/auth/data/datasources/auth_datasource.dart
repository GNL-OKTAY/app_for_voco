import 'package:firebase_auth/firebase_auth.dart';

import '../../model/user_data_model.dart';
import '../contract/auth_datasource_contract.dart';
import '../model/user_login_model.dart';
import '../model/user_register_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthDataSource implements AuthDataSourceContract {
  AuthDataSource({
    FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firebaseFirestore,
  }) {
    // _firebaseAuth = firebaseAuth;
    // _firestore = firebaseFirestore;
  }
  late final FirebaseAuth _firebaseAuth;
  late final FirebaseFirestore _firestore;

  @override
  Future<UserDataModel?> login({required UserLoginModel userModel}) async {
    if (_firebaseAuth.currentUser != null) {
      return _userFromFirebase(_firebaseAuth.currentUser);
    } else {
      final authCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
      await _userFromFirebase(authCredential.user);
    }
    return null;
  }

  Future<UserDataModel?> _userFromFirebase(User? user) async {
    if (user == null) {
      return null;
    } else {
      final userFromFirebase =
          await _firestore.collection('').doc(user.uid).get();
      return UserDataModel(
        id: userFromFirebase['id'].toString(),
        email: userFromFirebase['email'].toString(),
        firstName: userFromFirebase['first_name'].toString(),
        lastName: userFromFirebase['last_name'].toString(),
        avatar: userFromFirebase['avatar'].toString(),
      );
    }
  }

  @override
  Future<UserDataModel?> register({required UserRegisterModel user}) async {
    final authCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: user.email,
      password: user.password,
    );

    final userDataToSave = UserDataModel(
      id: authCredential.user!.uid,
      email: "",
      firstName: "",
      lastName: "",
      avatar: "",
    );

    await _firestore
        .collection('')
        .doc(authCredential.user!.uid)
        .set(userDataToSave.toJson());

    return _userFromFirebase(authCredential.user);
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}
