import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_data_madel.freezed.dart';
part 'calendar_data_madel.g.dart';

@freezed
abstract class CalendarDataModel with _$CalendarDataModel {
  const factory CalendarDataModel({
    final String? endTime,
    final String? marketId,
    final String? notes,
    final String? startTime,
    final String? subject,
    final String? userId,
  }) = _CalendarDataModel;

  @override
  factory CalendarDataModel.fromJson(Map<String, dynamic> json) =>
      _$CalendarDataModelFromJson(json);
}
