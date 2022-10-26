import 'package:flutter/material.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';
import 'package:flutterwebb/widgets/largeScreen.dart';
import 'package:flutterwebb/widgets/side_menu.dart';
import 'package:flutterwebb/widgets/smallScreen.dart';
import 'constants/top_navigation.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        elevation: 0,
        child: SideMenu(),
      ),
      body: Responsiveness(smallScreen: SmallScreen(),largeScreen: LargeScreen(),)
    );
  }
}
