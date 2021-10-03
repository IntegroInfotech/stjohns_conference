import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stjohns_conference/domain/core/value_object.dart';

part 'video.freezed.dart';

@freezed
abstract class Video with _$Video {
  const factory Video({
    required UniqueId id,
    required String title,
    required String description,
    String? videoId,
    String? videoUrl,
    String? hyperLink,
    String? doctorId,
    int? sortIndex,
  }) = _Video;
}
