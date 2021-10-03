// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoWatcherEventTearOff {
  const _$VideoWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _WatchUnReleasedStarted watchUnReleasedStarted() {
    return const _WatchUnReleasedStarted();
  }

  _VideoReceived videoReceived(
      Either<VideoFailure, KtList<Video>> failureOrVideo) {
    return _VideoReceived(
      failureOrVideo,
    );
  }
}

/// @nodoc
const $VideoWatcherEvent = _$VideoWatcherEventTearOff();

/// @nodoc
mixin _$VideoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUnReleasedStarted,
    required TResult Function(
            Either<VideoFailure, KtList<Video>> failureOrVideo)
        videoReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUnReleasedStarted,
    TResult Function(Either<VideoFailure, KtList<Video>> failureOrVideo)?
        videoReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUnReleasedStarted value)
        watchUnReleasedStarted,
    required TResult Function(_VideoReceived value) videoReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUnReleasedStarted value)? watchUnReleasedStarted,
    TResult Function(_VideoReceived value)? videoReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoWatcherEventCopyWith<$Res> {
  factory $VideoWatcherEventCopyWith(
          VideoWatcherEvent value, $Res Function(VideoWatcherEvent) then) =
      _$VideoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoWatcherEventCopyWithImpl<$Res>
    implements $VideoWatcherEventCopyWith<$Res> {
  _$VideoWatcherEventCopyWithImpl(this._value, this._then);

  final VideoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(VideoWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$VideoWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'VideoWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUnReleasedStarted,
    required TResult Function(
            Either<VideoFailure, KtList<Video>> failureOrVideo)
        videoReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUnReleasedStarted,
    TResult Function(Either<VideoFailure, KtList<Video>> failureOrVideo)?
        videoReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUnReleasedStarted value)
        watchUnReleasedStarted,
    required TResult Function(_VideoReceived value) videoReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUnReleasedStarted value)? watchUnReleasedStarted,
    TResult Function(_VideoReceived value)? videoReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements VideoWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchUnReleasedStartedCopyWith<$Res> {
  factory _$WatchUnReleasedStartedCopyWith(_WatchUnReleasedStarted value,
          $Res Function(_WatchUnReleasedStarted) then) =
      __$WatchUnReleasedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUnReleasedStartedCopyWithImpl<$Res>
    extends _$VideoWatcherEventCopyWithImpl<$Res>
    implements _$WatchUnReleasedStartedCopyWith<$Res> {
  __$WatchUnReleasedStartedCopyWithImpl(_WatchUnReleasedStarted _value,
      $Res Function(_WatchUnReleasedStarted) _then)
      : super(_value, (v) => _then(v as _WatchUnReleasedStarted));

  @override
  _WatchUnReleasedStarted get _value => super._value as _WatchUnReleasedStarted;
}

/// @nodoc

class _$_WatchUnReleasedStarted implements _WatchUnReleasedStarted {
  const _$_WatchUnReleasedStarted();

  @override
  String toString() {
    return 'VideoWatcherEvent.watchUnReleasedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUnReleasedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUnReleasedStarted,
    required TResult Function(
            Either<VideoFailure, KtList<Video>> failureOrVideo)
        videoReceived,
  }) {
    return watchUnReleasedStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUnReleasedStarted,
    TResult Function(Either<VideoFailure, KtList<Video>> failureOrVideo)?
        videoReceived,
    required TResult orElse(),
  }) {
    if (watchUnReleasedStarted != null) {
      return watchUnReleasedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUnReleasedStarted value)
        watchUnReleasedStarted,
    required TResult Function(_VideoReceived value) videoReceived,
  }) {
    return watchUnReleasedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUnReleasedStarted value)? watchUnReleasedStarted,
    TResult Function(_VideoReceived value)? videoReceived,
    required TResult orElse(),
  }) {
    if (watchUnReleasedStarted != null) {
      return watchUnReleasedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUnReleasedStarted implements VideoWatcherEvent {
  const factory _WatchUnReleasedStarted() = _$_WatchUnReleasedStarted;
}

/// @nodoc
abstract class _$VideoReceivedCopyWith<$Res> {
  factory _$VideoReceivedCopyWith(
          _VideoReceived value, $Res Function(_VideoReceived) then) =
      __$VideoReceivedCopyWithImpl<$Res>;
  $Res call({Either<VideoFailure, KtList<Video>> failureOrVideo});
}

/// @nodoc
class __$VideoReceivedCopyWithImpl<$Res>
    extends _$VideoWatcherEventCopyWithImpl<$Res>
    implements _$VideoReceivedCopyWith<$Res> {
  __$VideoReceivedCopyWithImpl(
      _VideoReceived _value, $Res Function(_VideoReceived) _then)
      : super(_value, (v) => _then(v as _VideoReceived));

  @override
  _VideoReceived get _value => super._value as _VideoReceived;

  @override
  $Res call({
    Object? failureOrVideo = freezed,
  }) {
    return _then(_VideoReceived(
      failureOrVideo == freezed
          ? _value.failureOrVideo
          : failureOrVideo // ignore: cast_nullable_to_non_nullable
              as Either<VideoFailure, KtList<Video>>,
    ));
  }
}

/// @nodoc

class _$_VideoReceived implements _VideoReceived {
  const _$_VideoReceived(this.failureOrVideo);

  @override
  final Either<VideoFailure, KtList<Video>> failureOrVideo;

  @override
  String toString() {
    return 'VideoWatcherEvent.videoReceived(failureOrVideo: $failureOrVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoReceived &&
            (identical(other.failureOrVideo, failureOrVideo) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrVideo, failureOrVideo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrVideo);

  @JsonKey(ignore: true)
  @override
  _$VideoReceivedCopyWith<_VideoReceived> get copyWith =>
      __$VideoReceivedCopyWithImpl<_VideoReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUnReleasedStarted,
    required TResult Function(
            Either<VideoFailure, KtList<Video>> failureOrVideo)
        videoReceived,
  }) {
    return videoReceived(failureOrVideo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUnReleasedStarted,
    TResult Function(Either<VideoFailure, KtList<Video>> failureOrVideo)?
        videoReceived,
    required TResult orElse(),
  }) {
    if (videoReceived != null) {
      return videoReceived(failureOrVideo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchUnReleasedStarted value)
        watchUnReleasedStarted,
    required TResult Function(_VideoReceived value) videoReceived,
  }) {
    return videoReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchUnReleasedStarted value)? watchUnReleasedStarted,
    TResult Function(_VideoReceived value)? videoReceived,
    required TResult orElse(),
  }) {
    if (videoReceived != null) {
      return videoReceived(this);
    }
    return orElse();
  }
}

abstract class _VideoReceived implements VideoWatcherEvent {
  const factory _VideoReceived(
      Either<VideoFailure, KtList<Video>> failureOrVideo) = _$_VideoReceived;

  Either<VideoFailure, KtList<Video>> get failureOrVideo =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VideoReceivedCopyWith<_VideoReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VideoWatcherStateTearOff {
  const _$VideoWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingInProgress loadingInProgress() {
    return const _LoadingInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Video> videos) {
    return _LoadSuccess(
      videos,
    );
  }

  _LoadFailure loadFailure(VideoFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $VideoWatcherState = _$VideoWatcherStateTearOff();

/// @nodoc
mixin _$VideoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(KtList<Video> videos) loadSuccess,
    required TResult Function(VideoFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(KtList<Video> videos)? loadSuccess,
    TResult Function(VideoFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoWatcherStateCopyWith<$Res> {
  factory $VideoWatcherStateCopyWith(
          VideoWatcherState value, $Res Function(VideoWatcherState) then) =
      _$VideoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoWatcherStateCopyWithImpl<$Res>
    implements $VideoWatcherStateCopyWith<$Res> {
  _$VideoWatcherStateCopyWithImpl(this._value, this._then);

  final VideoWatcherState _value;
  // ignore: unused_field
  final $Res Function(VideoWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VideoWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VideoWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(KtList<Video> videos) loadSuccess,
    required TResult Function(VideoFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(KtList<Video> videos)? loadSuccess,
    TResult Function(VideoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingInProgressCopyWith<$Res> {
  factory _$LoadingInProgressCopyWith(
          _LoadingInProgress value, $Res Function(_LoadingInProgress) then) =
      __$LoadingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingInProgressCopyWithImpl<$Res>
    extends _$VideoWatcherStateCopyWithImpl<$Res>
    implements _$LoadingInProgressCopyWith<$Res> {
  __$LoadingInProgressCopyWithImpl(
      _LoadingInProgress _value, $Res Function(_LoadingInProgress) _then)
      : super(_value, (v) => _then(v as _LoadingInProgress));

  @override
  _LoadingInProgress get _value => super._value as _LoadingInProgress;
}

/// @nodoc

class _$_LoadingInProgress implements _LoadingInProgress {
  const _$_LoadingInProgress();

  @override
  String toString() {
    return 'VideoWatcherState.loadingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(KtList<Video> videos) loadSuccess,
    required TResult Function(VideoFailure failure) loadFailure,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(KtList<Video> videos)? loadSuccess,
    TResult Function(VideoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingInProgress implements VideoWatcherState {
  const factory _LoadingInProgress() = _$_LoadingInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Video> videos});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$VideoWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_LoadSuccess(
      videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as KtList<Video>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.videos);

  @override
  final KtList<Video> videos;

  @override
  String toString() {
    return 'VideoWatcherState.loadSuccess(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videos);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(KtList<Video> videos) loadSuccess,
    required TResult Function(VideoFailure failure) loadFailure,
  }) {
    return loadSuccess(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(KtList<Video> videos)? loadSuccess,
    TResult Function(VideoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements VideoWatcherState {
  const factory _LoadSuccess(KtList<Video> videos) = _$_LoadSuccess;

  KtList<Video> get videos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({VideoFailure failure});

  $VideoFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$VideoWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as VideoFailure,
    ));
  }

  @override
  $VideoFailureCopyWith<$Res> get failure {
    return $VideoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final VideoFailure failure;

  @override
  String toString() {
    return 'VideoWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(KtList<Video> videos) loadSuccess,
    required TResult Function(VideoFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(KtList<Video> videos)? loadSuccess,
    TResult Function(VideoFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements VideoWatcherState {
  const factory _LoadFailure(VideoFailure failure) = _$_LoadFailure;

  VideoFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
