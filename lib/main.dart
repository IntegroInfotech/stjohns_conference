import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:injectable/injectable.dart';
import 'package:stjohns_conference/injection.dart';
import 'package:stjohns_conference/presentation/core/app_widget.dart';

final DateTime confStartTime = DateTime(2021, 8, 27, 11);
final StreamController conferenceTimerStream = StreamController();

enum ConferenceState {
  conferenceStarted,
  conferenceEnded,
}

void main() {
  configureInjection(Environment.prod);

  runApp(AppWidget());

  //runApp(const TimerApp());
}

class TimerApp extends StatelessWidget {
  const TimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWidget();
  }
}

class TimerWidget extends StatefulWidget {
  TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late CountdownTimerController controller;
  int endTime = confStartTime.millisecondsSinceEpoch;

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    conferenceTimerStream.add(ConferenceState.conferenceStarted);
    print('Added Event');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/banner.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.white70,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Conference Starts in',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 150,
                  child: FittedBox(
                    child: CountdownTimer(
                      textStyle: Theme.of(context).textTheme.headline3,
                      controller: controller,
                      onEnd: onEnd,
                      endTime: endTime,
                      endWidget: const Text('Conference Stated'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
