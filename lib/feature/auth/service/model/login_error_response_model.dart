// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginErrorResponseModel {
  final String? error;
  LoginErrorResponseModel({
    this.error,
  });

  LoginErrorResponseModel copyWith({
    String? error,
  }) {
    return LoginErrorResponseModel(
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error,
    };
  }

  factory LoginErrorResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginErrorResponseModel(
      error: map['error'] != null ? map['error'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginErrorResponseModel.fromJson(String source) => LoginErrorResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginErrorResponseModel(error: $error)';

  @override
  bool operator ==(covariant LoginErrorResponseModel other) {
    if (identical(this, other)) return true;

    return other.error == error;
  }

  @override
  int get hashCode => error.hashCode;
}
