import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bs_flutter/bs_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:kt_dart/collection.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:stjohns_conference/application/auth/auth_bloc/auth_bloc.dart';
import 'package:stjohns_conference/application/video/video_watcher/video_watcher_bloc.dart';
import 'package:stjohns_conference/domain/video/video.dart';
import 'package:stjohns_conference/infrastructure/auth/firebase_auth_facade.dart';
import 'package:stjohns_conference/injection.dart';
import 'package:stjohns_conference/presentation/routes/router.gr.dart';
import 'package:stjohns_conference/presentation/video_page/widgets/branding_container.dart';
import 'package:stjohns_conference/presentation/video_page/widgets/video_list_widget.dart';
import 'package:stjohns_conference/presentation/video_page/widgets/video_poster.dart';

import 'widgets/video_container_widget.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<VideoWatcherBloc>()..add(const VideoWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.checkUserExist()),
        ),
      ],
      child: const VideosPlayerWidget(),
    );
  }
}

class VideosPlayerWidget extends StatefulWidget {
  const VideosPlayerWidget({Key? key}) : super(key: key);

  @override
  _VideosPlayerWidgetState createState() => _VideosPlayerWidgetState();
}

class _VideosPlayerWidgetState extends State<VideosPlayerWidget> {
  bool _firstRun = true;
  late StackRouter autoRouter;
  KtList<Video> videos = const KtList.empty();
  Video? selectedVideo;

  late StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    startStream();
  }

  @override
  void didChangeDependencies() {
    if (_firstRun) {
      autoRouter = AutoRouter.of(context);
      updateUserState();
      _firstRun = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    final appBar = AppBar();
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                print('Line00');
                state.maybeMap(
                  unauthenticated: (_) {
                    print('autoRouter.popAndPush(const SignInPageRoute())');
                    autoRouter.popAndPush(const SignInPageRoute());
                  },
                  orElse: () {
                    print('unauthenticated -> Or Else');
                  },
                );
              },
            ),
            BlocListener<VideoWatcherBloc, VideoWatcherState>(
              listener: (context, state) {
                state.maybeMap(
                  loadSuccess: (e) {
                    print(e.videos);
                    setState(() {
                      videos.plus(e.videos);
                    });
                  },
                  loadFailure: (e) {
                    print(e.failure);
                  },
                  loadingInProgress: (e) {
                    print(e);
                  },
                  orElse: () {
                    print('Failed');
                  },
                );
              },
            ),
          ],
          child: Scaffold(
            drawer: Drawer(
              child: VideoListWidget(
                onClick: onVideoSelected,
              ),
            ),
            appBar: AppBar(
              title: Text("ambkccon - 2021".toUpperCase()),
              actions: [
                IconButton(
                  onPressed: () {
                    authBloc.add(const AuthEvent.signedOut());
                  },
                  icon: const Icon(Icons.logout),
                )
              ],
            ),
            body: Column(
              children: [
                if (Device.screenType == ScreenType.mobile)
                  BsContainer(
                    child: BsRow(
                      children: [
                        BsCol(
                          sizes: const ColScreen(md: Col.col_8),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height - (appBar.preferredSize.height + 200),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: selectedVideo == null
                                        ? VideoPoster()
                                        : VideContainerWidget(
                                            key: UniqueKey(),
                                            video: selectedVideo!,
                                            onVideoEnd: () {
                                              setState(() {
                                                selectedVideo = null;
                                              });
                                            },
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        BsCol(
                          sizes: const ColScreen(md: Col.col_4),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height - (appBar.preferredSize.height + 200),
                            child: VideoListWidget(
                              onClick: onVideoSelected,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (Device.screenType != ScreenType.mobile)
                  Expanded(
                    child: BsContainer(
                        child: BsRow(
                      children: [
                        BsCol(
                          sizes: const ColScreen(md: Col.col_8),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height - (appBar.preferredSize.height + 200),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: selectedVideo == null
                                        ? VideoPoster()
                                        : VideContainerWidget(
                                            key: UniqueKey(),
                                            video: selectedVideo!,
                                            onVideoEnd: () {
                                              setState(() {
                                                selectedVideo = null;
                                              });
                                            },
                                          ),
                                  ),
                                ),
                                /*if (selectedVideo != null) ...[
                              Text(
                                selectedVideo!.title,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                selectedVideo!.description,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ]*/
                              ],
                            ),
                          ),
                        ),
                        BsCol(
                          sizes: const ColScreen(md: Col.col_4),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height - (appBar.preferredSize.height + 200),
                            child: VideoListWidget(
                              onClick: onVideoSelected,
                            ),
                          ),
                        ),
                      ],
                    )
                        /*Column(
                    children: [
                      Image.network(
                        'https://1.bp.blogspot.com/-jGzEyxRo5lA/Xu-gD2pjeCI/AAAAAAAAU90/oXBIHt6sXKc0vQp0_3CIxRzxTU3GpLMKwCK4BGAsYHg/w1200-h630-p-k-no-nu/DESKTOP-BACKGROUND-HEROSCREEN.CC-UHD-16-9-ASPECT.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.network(
                        'https://1.bp.blogspot.com/-jGzEyxRo5lA/Xu-gD2pjeCI/AAAAAAAAU90/oXBIHt6sXKc0vQp0_3CIxRzxTU3GpLMKwCK4BGAsYHg/w1200-h630-p-k-no-nu/DESKTOP-BACKGROUND-HEROSCREEN.CC-UHD-16-9-ASPECT.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),*/
                        ),
                  ),
                Container(
                  color: Colors.yellow[700],
                  height: 10,
                ),
                StreamBuilder(
                  stream: _controller.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return BrandingContainer(
                        message: snapshot.data.toString(),
                      );
                    } else if (snapshot.hasError) {
                      return BrandingContainer(
                        message: snapshot.error.toString(),
                      );
                    }
                    return const BrandingContainer(message: '');
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void onVideoSelected({required Video selectedVideo}) {
    setState(() {
      this.selectedVideo = selectedVideo;
    });
    print('video selected called');
  }

  late StreamController _controller;

  void startStream() {
    _controller = StreamController();

    Timer.periodic(const Duration(seconds: 5), (timer) {
      String day = '';
      String session = '';
      print(timer.tick);
      List<int> days = const [24, 25, 26];
      if (DateTime.now().day == days[0]) {
        day = 'PRECONFERENCE SYMPOSIUM';
        if ((DateTime.now().isAfter(DateTime(2021, 8, days[0], 9)) && DateTime.now().isBefore(DateTime(2021, 8, days[0], 11))) ||
            (DateTime.now().isAfter(DateTime(2021, 8, days[0], 11, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[0], 13)))) {
          session = ' ON LIQUID BIOPSY – A PARADIGM SHIFT';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[0], 11)) && DateTime.now().isBefore(DateTime(2021, 8, days[0], 11, 30))) {
          session = ' - Coffee break';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[0], 13)) && DateTime.now().isBefore(DateTime(2021, 8, days[0], 13, 30))) {
          session = ' - Launch Break';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[0], 13, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[0], 17))) {
          session = ' ON ADVANCED QC PRACTICES';
        }
      }

      if (DateTime.now().day == days[1]) {
        day = 'Day 1';
        if ((DateTime.now().isAfter(DateTime(2021, 8, days[1], 9)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 11))) ||
            (DateTime.now().isAfter(DateTime(2021, 8, days[1], 11, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 13)))) {
          session = ' Pediatric Laboratory Medicine';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[1], 11)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 11, 30))) {
          session = ' - Coffee break';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[1], 12, 45)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 13, 30))) {
          session = ' - Launch Break';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[1], 13, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 14, 30))) {
          session = ' Award paper Presentation – [Faculty & Postgraduates]';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[1], 14, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 16, 30))) {
          session = ' Award paper Postgraduate Quiz';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[1], 16, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[1], 17, 30))) {
          session = ' General Body Meeting';
        }
      }

      if (DateTime.now().day == days[2]) {
        day = 'Day 2';
        if ((DateTime.now().isAfter(DateTime(2021, 8, days[2], 9)) && DateTime.now().isBefore(DateTime(2021, 8, days[2], 11, 15))) ||
            (DateTime.now().isAfter(DateTime(2021, 8, days[2], 11, 30)) && DateTime.now().isBefore(DateTime(2021, 8, days[2], 13, 15)))) {
          session = ' Lab\’s role in neonatal critical care to obesity';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[2], 11)) && DateTime.now().isBefore(DateTime(2021, 8, days[2], 11, 30))) {
          session = ' - Coffee break';
        } else if (DateTime.now().isAfter(DateTime(2021, 8, days[2], 13, 15)) && DateTime.now().isBefore(DateTime(2021, 8, days[2], 13, 45))) {
          session = ' - Valedictory Function';
        }
      }
      if (session.isEmpty || day.isEmpty) {
        _controller.addError('Oops! You have logged in either too early or too late for the event.');
        timer.cancel();
      } else {
        _controller.add('$day$session');
      }
    });
  }

  Timer? _userStatusTimer;

  @override
  void dispose() {
    _controller.close();
    _userStatusTimer?.cancel();
    super.dispose();
  }

  void updateUserState() {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      poll(uid);
      _userStatusTimer = Timer.periodic(const Duration(seconds: 30, minutes: 4), (timer) async {
        poll(uid);
      });
    } else {
      autoRouter.popAndPush(const SignInPageRoute());
    }
  }

  void poll(String uid) async {
    http.Response response = await http.patch(
      Uri.parse(
        'https://api.stjohnsblr.in/v1/conf-user/$uid',
      ),
      headers: {'Content-Type': 'application/json'},
      body: Data(uid: uid, timeStamp: DateTime.now()).toJson(),
    );
    print(response.body);
  }
}
