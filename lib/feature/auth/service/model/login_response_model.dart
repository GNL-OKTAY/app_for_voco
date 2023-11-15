import 'dart:convert';

class LoginResponseModel {
  LoginResponseModel({
    this.token,
  });

  final String? token;

  LoginResponseModel copyWith({
    String? token,
  }) {
    return LoginResponseModel(
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() => <String, dynamic>{'token': token};

  factory LoginResponseModel.fromMap(Map<String, dynamic> map) => LoginResponseModel(token: map['token'] != null ? map['token'] as String : null);

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromJson(String source) => LoginResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginResponseModel(token: $token)';
}
