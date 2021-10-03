part of 'video_watcher_bloc.dart';

@freezed
abstract class VideoWatcherEvent with _$VideoWatcherEvent {
  const factory VideoWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory VideoWatcherEvent.watchUnReleasedStarted() = _WatchUnReleasedStarted;
  const factory VideoWatcherEvent.videoReceived(Either<VideoFailure, KtList<Video>> failureOrVideo) = _VideoReceived;
}
