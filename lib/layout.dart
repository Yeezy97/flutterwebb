import 'package:flutter/material.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';
import 'package:flutterwebb/widgets/largeScreen.dart';
import 'package:flutterwebb/widgets/smallScreen.dart';
import 'constants/top_navigation.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
      ),
      body: Responsiveness(smallScreen: SmallScreen(),largeScreen: LargeScreen(),)
    );
  }
}
