import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:stjohns_conference/domain/video/i_video_repository.dart';
import 'package:stjohns_conference/domain/video/video.dart';
import 'package:stjohns_conference/domain/video/video_failure.dart';

part 'video_watcher_bloc.freezed.dart';
part 'video_watcher_event.dart';
part 'video_watcher_state.dart';

@injectable
class VideoWatcherBloc extends Bloc<VideoWatcherEvent, VideoWatcherState> {
  final IVideoRepository _iVideoRepository;
  StreamSubscription<Either<VideoFailure, KtList<Video>>>? _videoStremSubscription;

  VideoWatcherBloc(this._iVideoRepository) : super(const VideoWatcherState.initial());

  @override
  Stream<VideoWatcherState> mapEventToState(
    VideoWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const VideoWatcherState.loadingInProgress();
        await _videoStremSubscription?.cancel();
        print('_video Subscription Cancelled');
        _videoStremSubscription = _iVideoRepository.watchAll().listen(
              (failureOrVideos) => add(
                VideoWatcherEvent.videoReceived(failureOrVideos),
              ),
            );
      },
      watchUnReleasedStarted: (e) async* {
        yield const VideoWatcherState.loadingInProgress();
        await _videoStremSubscription?.cancel();
        print('_video Subscription Cancelled');
        _videoStremSubscription = _iVideoRepository.watchUnReleased().listen(
              (failureOrVideos) => add(
                VideoWatcherEvent.videoReceived(failureOrVideos),
              ),
            );
      },
      videoReceived: (e) async* {
        yield e.failureOrVideo.fold(
          (f) => VideoWatcherState.loadFailure(f),
          (videos) => VideoWatcherState.loadSuccess(videos),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _videoStremSubscription?.cancel();
    return super.close();
  }
}
