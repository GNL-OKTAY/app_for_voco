import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    final String? username,
    final String? id,
    final String? marketName,
    final String? address,
    final String? category,
    final String? phone,
    final String? profileImageUrl,
    final String? email,
    final String? rating,
    final String? years,
    final String? ziyaretci,
    final String? backgroundImageUrl,
    final String? tarihce,
    final String? vizyon,
    final String? misyon,
    final String? webSitesi,
    final String? instagram,
  }) = _UserDataModel;

  @override
  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
