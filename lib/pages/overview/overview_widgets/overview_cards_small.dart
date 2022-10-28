import 'package:flutter/material.dart';
import 'package:flutterwebb/widgets/info_card_small.dart';

import '../../../widgets/info_card.dart';

class OverViewCardsSmall extends StatelessWidget {
  const OverViewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled deliveries ",
            value: "3",
            onTap: () {},
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
            title: "Schedueled deliveries",
            value: "3",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}