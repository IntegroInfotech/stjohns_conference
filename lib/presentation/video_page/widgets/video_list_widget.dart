import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stjohns_conference/application/video/video_watcher/video_watcher_bloc.dart';
import 'package:stjohns_conference/domain/video/video.dart';

class VideoListWidget extends StatefulWidget {
  final void Function({required Video selectedVideo}) onClick;

  const VideoListWidget({
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  _VideoListWidgetState createState() => _VideoListWidgetState();
}

class _VideoListWidgetState extends State<VideoListWidget> {
  Video? selectedVideo;

  @override
  Widget build(BuildContext context) {
    // print('Running Video List Widget');
    return BlocBuilder<VideoWatcherBloc, VideoWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (e) => Container(),
          loadingInProgress: (e) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              padding: const EdgeInsets.all(5),
              itemCount: state.videos.size,
              itemBuilder: (context, index) {
                final video = state.videos[index];
                return Visibility(
                  visible: index < 2,
                  child: Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Material(
                          color: selectedVideo != null && selectedVideo == video ? Colors.yellow : null,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedVideo = video;
                              });
                              if (video.videoUrl != null) widget.onClick(selectedVideo: video);
                              if (video.hyperLink != null) js.context.callMethod('open', [video.hyperLink]);
                            },
                            child: Row(
                              children: [
                                if (video.doctorId != null)
                                  Image.asset(
                                    'assets/images/doctors/${video.doctorId}',
                                    height: 100,
                                  ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        if (index == 0)
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Colors.red),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'On Going',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          )
                                        else
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Colors.grey),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'Previous',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        Text(
                                          video.title,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          video.description,
                                          maxLines: 3,
                                        ),
                                        if (video.videoUrl != null || video.videoId != null)
                                          Text(
                                            'Click to play video',
                                            style: Theme.of(context).textTheme.caption?.copyWith(
                                                  color: Colors.red,
                                                  fontSize: 15,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          loadFailure: (e) => const Center(
            child: Text('Load Failure'),
          ),
        );
      },
    );
  }
}
