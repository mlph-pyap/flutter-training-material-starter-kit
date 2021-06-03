import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

//This is launch page
class LaunchView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final timeSecond = ValueNotifier<int>(0);

    // Timer it will add 1 per second
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      timeSecond.value += 1;
    });

    return Container(
      color: Colors.blue,
      child: ValueListenableBuilder<int>(
          valueListenable: timeSecond,
          builder: (context, timeSecondValue, child) {
            //when reach to 10 seconds, it will redirect to the home page
            if (timeSecondValue >= 10) {
              Timer(Duration(seconds: 1), () {
                // 1s delay, navigate to a home page
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home', (Route<dynamic> route) => false);
              });
              return Text("You will be redirected to home page");
            }
            //to Show the countdown on the screen
            return Text("You will be redirect at ${10 - timeSecondValue}");
          }),
    );
    ;
  }
}
