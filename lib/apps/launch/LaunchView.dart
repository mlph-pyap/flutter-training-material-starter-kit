import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

//This is launch page
class LaunchView extends HookWidget {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 10), () {
      // 10s over, navigate to a new page
      Navigator.of(context).pushNamedAndRemoveUntil( '/home', (Route<dynamic> route) => false);

    });

    return Container(
      color: Colors.blue,
      child: Text("Loading"),
    );
    ;
  }
}
