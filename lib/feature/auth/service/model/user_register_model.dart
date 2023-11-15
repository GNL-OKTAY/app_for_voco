import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserRegisterModel {
  final String username;
  final String email;
  final String password;
  final String uid;

  UserRegisterModel({
    required this.username,
    required this.email,
    required this.password,
    required this.uid,
  });

  UserRegisterModel copyWith({
    String? username,
    String? email,
    String? password,
    String? uid,
  }) {
    return UserRegisterModel(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
      'uid': uid,
    };
  }

  factory UserRegisterModel.fromMap(Map<String, dynamic> map) {
    return UserRegisterModel(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      uid: map['uid'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRegisterModel.fromJson(String source) =>
      UserRegisterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserRegisterModel(username: $username, email: $email, password: $password, uid: $uid)';
  }

  @override
  bool operator ==(covariant UserRegisterModel other) {
    if (identical(this, other)) return true;

    return other.username == username &&
        other.email == email &&
        other.password == password &&
        other.uid == uid;
  }

  @override
  int get hashCode {
    return username.hashCode ^
        email.hashCode ^
        password.hashCode ^
        uid.hashCode;
  }
}
