// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_data_madel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarDataModelImpl _$$CalendarDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarDataModelImpl(
      endTime: json['endTime'] as String?,
      marketId: json['marketId'] as String?,
      notes: json['notes'] as String?,
      startTime: json['startTime'] as String?,
      subject: json['subject'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$CalendarDataModelImplToJson(
        _$CalendarDataModelImpl instance) =>
    <String, dynamic>{
      'endTime': instance.endTime,
      'marketId': instance.marketId,
      'notes': instance.notes,
      'startTime': instance.startTime,
      'subject': instance.subject,
      'userId': instance.userId,
    };
