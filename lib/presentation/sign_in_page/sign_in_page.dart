import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:stjohns_conference/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:stjohns_conference/injection.dart';
import 'package:stjohns_conference/presentation/sign_in_page/widgets/sign_in_form.dart';

import '../../main.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late CountdownTimerController controller;
  int endTime = confStartTime.millisecondsSinceEpoch;

  bool conferenceStarted = DateTime.now().isAfter(confStartTime);

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    setState(() {
      conferenceStarted = true;
    });
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
          if (conferenceStarted)
            BsContainer(
              color: Colors.white70,
              child: BlocProvider(
                create: (context) => getIt<SignInFormBloc>(),
                child: const SignInForm(),
              ),
            )
          else
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Day 2 of Conference: Lab’s role in neonatal critical care to obesity',
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
}
