import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class Responsiveness extends StatelessWidget {
  const Responsiveness({@required this.largeScreen, this.mediunmScreen, this.smallScreen, this.customScreen});

  final Widget? largeScreen;
  final Widget? mediunmScreen;
  final Widget? smallScreen;
  final Widget? customScreen;


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

