import 'package:flutter/material.dart';
import 'package:flutterwebb/constants/controllers.dart';
import 'package:flutterwebb/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
);