import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stjohns_conference/domain/core/value_object.dart';
import 'package:stjohns_conference/domain/video/video.dart';

part 'video_item_dtos.freezed.dart';
part 'video_item_dtos.g.dart';

@freezed
abstract class VideoItemDto with _$VideoItemDto {
  const VideoItemDto._();

  const factory VideoItemDto({
    String? id,
    required String title,
    required String description,
    String? videoId,
    String? videoUrl,
    String? doctorId,
    String? hyperLink,
    int? sortIndex,
  }) = _VideoItemDto;

  factory VideoItemDto.fromJson(Map<String, dynamic> json) => _$VideoItemDtoFromJson(json);

  factory VideoItemDto.fromFireStore(DocumentSnapshot doc) {
    final json = doc.data() as Map<String, dynamic>;
    if (json != null) {
      return VideoItemDto.fromJson(json).copyWith(id: doc.id); // : throw 'Document not present';
    } else {
      throw 'Doc not found';
    }
  }

  factory VideoItemDto.fromDomain(Video video) {
    return VideoItemDto(
      id: video.id.getOrCrash(),
      title: video.title,
      description: video.description,
      videoId: video.videoId,
      videoUrl: video.videoUrl,
      doctorId: video.doctorId,
      hyperLink: video.hyperLink,
    );
  }

  Video toDomain() {
    return Video(
      id: UniqueId.fromUniqueString(id ?? ''),
      description: description,
      doctorId: doctorId,
      title: title,
      videoId: videoId,
      videoUrl: videoUrl,
      hyperLink: hyperLink,
    );
  }
}
