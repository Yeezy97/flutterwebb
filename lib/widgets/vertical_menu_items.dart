import 'package:flutter/material.dart';

import '../constants/controllers.dart';

class VerticalMenuItems extends StatelessWidget {
  const VerticalMenuItems({Key? key, this.itemName, this.onTap})
      : super(key: key);

  final String? itemName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap!,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover("not hovering");
      },
    );
  }
}
