import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_failure.freezed.dart';

@freezed
abstract class VideoFailure with _$VideoFailure {
  const factory VideoFailure.unexpected() = _Unexpected;
}
