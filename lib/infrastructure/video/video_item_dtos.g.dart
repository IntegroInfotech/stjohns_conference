// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_item_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoItemDto _$_$_VideoItemDtoFromJson(Map<String, dynamic> json) {
  return _$_VideoItemDto(
    id: json['id'] as String?,
    title: json['title'] as String,
    description: json['description'] as String,
    videoId: json['videoId'] as String?,
    videoUrl: json['videoUrl'] as String?,
    doctorId: json['doctorId'] as String?,
    hyperLink: json['hyperLink'] as String?,
    sortIndex: json['sortIndex'] as int?,
  );
}

Map<String, dynamic> _$_$_VideoItemDtoToJson(_$_VideoItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'videoId': instance.videoId,
      'videoUrl': instance.videoUrl,
      'doctorId': instance.doctorId,
      'hyperLink': instance.hyperLink,
      'sortIndex': instance.sortIndex,
    };
