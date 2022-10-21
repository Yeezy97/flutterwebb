import 'package:flutter/material.dart';
import 'package:flutterwebb/constants/controllers.dart';
import 'package:flutterwebb/constants/style.dart';
import 'package:flutterwebb/widgets/custom_text.dart';
import 'package:get/get.dart';

class HorizontalMenuItems extends StatelessWidget {
  const HorizontalMenuItems({Key? key, this.itemName, this.onTap}) : super(key: key);

  final String? itemName;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap!,
      onHover: (value){
        value ?
        menuController.onHover(itemName!) :
        menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName!) ?
        lightGrey.withOpacity(.1) : Colors.transparent,
        child: Row(
          children: [
            Visibility(visible: menuController.isHovering(itemName!) || menuController.isActive(itemName!),
            child: Container(width: 6, height: 40, color: dark,),
              maintainSize: true, maintainState: true, maintainAnimation: true,
            ),
            SizedBox(width: _width / 80,),
            Padding(padding: EdgeInsets.all(16),
            child: menuController.returnIconFor(itemName!) ,
            ),
            if(!menuController.isActive(itemName!))
              Flexible(child: CustomText(
                text: itemName!,
                color: menuController.isHovering(itemName!) ? dark : lightGrey,
              ),)
            else
              Flexible(child: CustomText(
                text: itemName!,
                color: dark,
                size: 18,
                weight: FontWeight.bold,
              ))
          ],
        ),

      )),

    );
  }
}
