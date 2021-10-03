import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stjohns_conference/domain/video/i_video_repository.dart';
import 'package:stjohns_conference/domain/video/video.dart';
import 'package:stjohns_conference/domain/video/video_failure.dart';
import 'package:stjohns_conference/infrastructure/video/video_item_dtos.dart';

@LazySingleton(as: IVideoRepository)
class VideoRepository implements IVideoRepository {
  final FirebaseFirestore _fireStore;

  VideoRepository(this._fireStore);

  @override
  Stream<Either<VideoFailure, KtList<Video>>> watchAll() async* {
    print('Called WatchAll');
    final videosRef = _fireStore.collection('videos');

    yield* videosRef
        .orderBy(
          'sortIndex',
          descending: true,
        )
        .snapshots()
        .map<Either<VideoFailure, KtList<Video>>>(
          (snapshot) => right(
            snapshot.docs
                .map(
                  (doc) => VideoItemDto.fromFireStore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (error, stackTrace) {
        print('Video Repository INFRA: ${error.toString()}');

        if (error is PlatformException && error.message!.contains('PERMISSION_DENIED')) {
          return left(const VideoFailure.unexpected());
        } else {
          return left(const VideoFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<VideoFailure, KtList<Video>>> watchUnReleased() {
    // TODO: implement watchUnReleased
    throw UnimplementedError();
  }
}
