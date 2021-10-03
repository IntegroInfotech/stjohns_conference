// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoTearOff {
  const _$VideoTearOff();

  _Video call(
      {required UniqueId id,
      required String title,
      required String description,
      String? videoId,
      String? videoUrl,
      String? hyperLink,
      String? doctorId,
      int? sortIndex}) {
    return _Video(
      id: id,
      title: title,
      description: description,
      videoId: videoId,
      videoUrl: videoUrl,
      hyperLink: hyperLink,
      doctorId: doctorId,
      sortIndex: sortIndex,
    );
  }
}

/// @nodoc
const $Video = _$VideoTearOff();

/// @nodoc
mixin _$Video {
  UniqueId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get hyperLink => throw _privateConstructorUsedError;
  String? get doctorId => throw _privateConstructorUsedError;
  int? get sortIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String title,
      String description,
      String? videoId,
      String? videoUrl,
      String? hyperLink,
      String? doctorId,
      int? sortIndex});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  final Video _value;
  // ignore: unused_field
  final $Res Function(Video) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? videoId = freezed,
    Object? videoUrl = freezed,
    Object? hyperLink = freezed,
    Object? doctorId = freezed,
    Object? sortIndex = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      hyperLink: hyperLink == freezed
          ? _value.hyperLink
          : hyperLink // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      sortIndex: sortIndex == freezed
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String title,
      String description,
      String? videoId,
      String? videoUrl,
      String? hyperLink,
      String? doctorId,
      int? sortIndex});
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(_Video _value, $Res Function(_Video) _then)
      : super(_value, (v) => _then(v as _Video));

  @override
  _Video get _value => super._value as _Video;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? videoId = freezed,
    Object? videoUrl = freezed,
    Object? hyperLink = freezed,
    Object? doctorId = freezed,
    Object? sortIndex = freezed,
  }) {
    return _then(_Video(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      hyperLink: hyperLink == freezed
          ? _value.hyperLink
          : hyperLink // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      sortIndex: sortIndex == freezed
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Video implements _Video {
  const _$_Video(
      {required this.id,
      required this.title,
      required this.description,
      this.videoId,
      this.videoUrl,
      this.hyperLink,
      this.doctorId,
      this.sortIndex});

  @override
  final UniqueId id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? videoId;
  @override
  final String? videoUrl;
  @override
  final String? hyperLink;
  @override
  final String? doctorId;
  @override
  final int? sortIndex;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, description: $description, videoId: $videoId, videoUrl: $videoUrl, hyperLink: $hyperLink, doctorId: $doctorId, sortIndex: $sortIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video &&
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
            (identical(other.hyperLink, hyperLink) ||
                const DeepCollectionEquality()
                    .equals(other.hyperLink, hyperLink)) &&
            (identical(other.doctorId, doctorId) ||
                const DeepCollectionEquality()
                    .equals(other.doctorId, doctorId)) &&
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
      const DeepCollectionEquality().hash(hyperLink) ^
      const DeepCollectionEquality().hash(doctorId) ^
      const DeepCollectionEquality().hash(sortIndex);

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);
}

abstract class _Video implements Video {
  const factory _Video(
      {required UniqueId id,
      required String title,
      required String description,
      String? videoId,
      String? videoUrl,
      String? hyperLink,
      String? doctorId,
      int? sortIndex}) = _$_Video;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get videoId => throw _privateConstructorUsedError;
  @override
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  String? get hyperLink => throw _privateConstructorUsedError;
  @override
  String? get doctorId => throw _privateConstructorUsedError;
  @override
  int? get sortIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
