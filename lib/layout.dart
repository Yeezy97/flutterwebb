import 'package:flutter/material.dart';
import 'package:flutterwebb/widgets/largeScreen.dart';
import 'package:flutterwebb/widgets/smallScreen.dart';

class SiteLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SmallScreen()
    );
  }
}
