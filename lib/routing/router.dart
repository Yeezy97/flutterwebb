import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebb/pages/clients/clients.dart';
import 'package:flutterwebb/pages/drivers/drivers.dart';
import 'package:flutterwebb/pages/overview/overview.dart';
import 'package:flutterwebb/routing/routes.dart';
import 'package:get/get.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }

}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}