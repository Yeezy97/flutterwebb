import 'package:flutter/material.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';
import 'package:flutterwebb/widgets/horizontal_menu_items.dart';
import 'package:flutterwebb/widgets/vertical_menu_items.dart';

class SideMenuItems extends StatelessWidget {
  const SideMenuItems({Key? key, this.onTap, this.itemName}) : super(key: key);

  final String? itemName;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    if(Responsiveness.isCustomScreen(context))
      return VerticalMenuItems(itemName: itemName!,onTap: onTap!,);

    return HorizontalMenuItems(itemName: itemName!,onTap: onTap!,);
  }
}
