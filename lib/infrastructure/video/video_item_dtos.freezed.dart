// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoItemDto _$VideoItemDtoFromJson(Map<String, dynamic> json) {
  return _VideoItemDto.fromJson(json);
}

/// @nodoc
class _$VideoItemDtoTearOff {
  const _$VideoItemDtoTearOff();

  _VideoItemDto call(
      {String? id,
      required String title,
      required String description,
      String? videoId,
      String? videoUrl,
      String? doctorId,
      String? hyperLink,
      int? sortIndex}) {
    return _VideoItemDto(
      id: id,
      title: title,
      description: description,
      videoId: videoId,
      videoUrl: videoUrl,
      doctorId: doctorId,
      hyperLink: hyperLink,
      sortIndex: sortIndex,
    );
  }

  VideoItemDto fromJson(Map<String, Object> json) {
    return VideoItemDto.fromJson(json);
  }
}

/// @nodoc
const $VideoItemDto = _$VideoItemDtoTearOff();

/// @nodoc
mixin _$VideoItemDto {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get doctorId => throw _privateConstructorUsedError;
  String? get hyperLink => throw _privateConstructorUsedError;
  int? get sortIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoItemDtoCopyWith<VideoItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoItemDtoCopyWith<$Res> {
  factory $VideoItemDtoCopyWith(
          VideoItemDto value, $Res Function(VideoItemDto) then) =
      _$VideoItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String title,
      String description,
      String? videoId,
      String? videoUrl,
      String? doctorId,
      String? hyperLink,
      int? sortIndex});
}

/// @nodoc
class _$VideoItemDtoCopyWithImpl<$Res> implements $VideoItemDtoCopyWith<$Res> {
  _$VideoItemDtoCopyWithImpl(this._value, this._then);

  final VideoItemDto _value;
  // ignore: unused_field
  final $Res Function(VideoItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? videoId = freezed,
    Object? videoUrl = freezed,
    Object? doctorId = freezed,
    Object? hyperLink = freezed,
    Object? sortIndex = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperLink: hyperLink == freezed
          ? _value.hyperLink
          : hyperLink // ignore: cast_nullable_to_non_nullable
              as String?,
      sortIndex: sortIndex == freezed
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VideoItemDtoCopyWith<$Res>
    implements $VideoItemDtoCopyWith<$Res> {
  factory _$VideoItemDtoCopyWith(
          _VideoItemDto value, $Res Function(_VideoItemDto) then) =
      __$VideoItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String title,
      String description,
      String? videoId,
      String? videoUrl,
      String? doctorId,
      String? hyperLink,
      int? sortIndex});
}

/// @nodoc
class __$VideoItemDtoCopyWithImpl<$Res> extends _$VideoItemDtoCopyWithImpl<$Res>
    implements _$VideoItemDtoCopyWith<$Res> {
  __$VideoItemDtoCopyWithImpl(
      _VideoItemDto _value, $Res Function(_VideoItemDto) _then)
      : super(_value, (v) => _then(v as _VideoItemDto));

  @override
  _VideoItemDto get _value => super._value as _VideoItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? videoId = freezed,
    Object? videoUrl = freezed,
    Object? doctorId = freezed,
    Object? hyperLink = freezed,
    Object? sortIndex = freezed,
  }) {
    return _then(_VideoItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperLink: hyperLink == freezed
          ? _value.hyperLink
          : hyperLink // ignore: cast_nullable_to_non_nullable
              as String?,
      sortIndex: sortIndex == freezed
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoItemDto extends _VideoItemDto {
  const _$_VideoItemDto(
      {this.id,
      required this.title,
      required this.description,
      this.videoId,
      this.videoUrl,
      this.doctorId,
      this.hyperLink,
      this.sortIndex})
      : super._();

  factory _$_VideoItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoItemDtoFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? videoId;
  @override
  final String? videoUrl;
  @override
  final String? doctorId;
  @override
  final String? hyperLink;
  @override
  final int? sortIndex;

  @override
  String toString() {
    return 'VideoItemDto(id: $id, title: $title, description: $description, videoId: $videoId, videoUrl: $videoUrl, doctorId: $doctorId, hyperLink: $hyperLink, sortIndex: $sortIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.doctorId, doctorId) ||
                const DeepCollectionEquality()
                    .equals(other.doctorId, doctorId)) &&
            (identical(other.hyperLink, hyperLink) ||
                const DeepCollectionEquality()
                    .equals(other.hyperLink, hyperLink)) &&
            (identical(other.sortIndex, sortIndex) ||
                const DeepCollectionEquality()
                    .equals(other.sortIndex, sortIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(doctorId) ^
      const DeepCollectionEquality().hash(hyperLink) ^
      const DeepCollectionEquality().hash(sortIndex);

  @JsonKey(ignore: true)
  @override
  _$VideoItemDtoCopyWith<_VideoItemDto> get copyWith =>
      __$VideoItemDtoCopyWithImpl<_VideoItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoItemDtoToJson(this);
  }
}

abstract class _VideoItemDto extends VideoItemDto {
  const factory _VideoItemDto(
      {String? id,
      required String title,
      required String description,
      String? videoId,
      String? videoUrl,
      String? doctorId,
      String? hyperLink,
      int? sortIndex}) = _$_VideoItemDto;
  const _VideoItemDto._() : super._();

  factory _VideoItemDto.fromJson(Map<String, dynamic> json) =
      _$_VideoItemDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get videoId => throw _privateConstructorUsedError;
  @override
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  String? get doctorId => throw _privateConstructorUsedError;
  @override
  String? get hyperLink => throw _privateConstructorUsedError;
  @override
  int? get sortIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoItemDtoCopyWith<_VideoItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
