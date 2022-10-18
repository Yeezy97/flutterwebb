import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsiveness.isSmallScreen(context) ?
      Image.asset("assets/logo.png",) : IconButton(
          icon: const Icon(Icons.menu,color: Colors.black,),
        onPressed: (){
          key.currentState!.openDrawer();
        },
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
