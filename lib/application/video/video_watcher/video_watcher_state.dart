part of 'video_watcher_bloc.dart';

@freezed
abstract class VideoWatcherState with _$VideoWatcherState {
  const factory VideoWatcherState.initial() = _Initial;
  const factory VideoWatcherState.loadingInProgress() = _LoadingInProgress;
  const factory VideoWatcherState.loadSuccess(KtList<Video> videos) = _LoadSuccess;
  const factory VideoWatcherState.loadFailure(VideoFailure failure) = _LoadFailure;
}
