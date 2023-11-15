// ignore_for_file: public_member_api_docs

import '../../../../core/error/custom_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_result.freezed.dart';

@freezed
abstract class StateResult<T> with _$StateResult<T> {
  const factory StateResult.initial() = Initial;
  const factory StateResult.loading() = Loading;
  const factory StateResult.completed(T data) = Completed<T>;
  const factory StateResult.failed(CustomFailure failure) = Failed;
}
