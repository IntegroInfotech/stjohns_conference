import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:stjohns_conference/domain/video/video.dart';
import 'package:stjohns_conference/domain/video/video_failure.dart';

abstract class IVideoRepository {
  Stream<Either<VideoFailure, KtList<Video>>> watchAll();
  Stream<Either<VideoFailure, KtList<Video>>> watchUnReleased();
}
