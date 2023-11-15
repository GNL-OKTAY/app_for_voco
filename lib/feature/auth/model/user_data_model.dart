import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    final String? id,
    final String? email,
    final String? firstName,
    final String? lastName,
    final String? avatar,
  }) = _UserDataModel;

  @override
  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
