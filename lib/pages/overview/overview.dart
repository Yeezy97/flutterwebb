import 'package:flutter/material.dart';
import 'package:flutterwebb/constants/controllers.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';
import 'package:flutterwebb/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'overview_widgets/overview_crads_large.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: Responsiveness.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [OverViewCardsLarge()],
          ),
        ),
      ],
    );
  }
}
