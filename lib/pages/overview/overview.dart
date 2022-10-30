import 'package:flutter/material.dart';
import 'package:flutterwebb/constants/controllers.dart';
import 'package:flutterwebb/helpers/responsiveness.dart';
import 'package:flutterwebb/pages/overview/overview_widgets/overview_cards_medium.dart';
import 'package:flutterwebb/pages/overview/overview_widgets/overview_cards_small.dart';
import 'package:flutterwebb/widgets/bar_chart.dart';
import 'package:flutterwebb/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

import 'overview_widgets/overview_crads_large.dart';

class OverViewPage extends StatelessWidget {
  OverViewPage({Key? key}) : super(key: key);

  final List<OrdinalSales> data = [
    OrdinalSales(
      year: "2017",
      sales: 10000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OrdinalSales(
      year: "2018",
      sales: 12000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OrdinalSales(
      year: "2019",
      sales: 9000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OrdinalSales(
      year: "2020",
      sales: 15000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OrdinalSales(
      year: "2021",
      sales: 18000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];
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
            children: [
              if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isMediumScreen(context))
                if(Responsiveness.isCustomScreen(context))
                  OverViewCardsMedium()
              else
                OverViewCardsLarge()
              else
                OverViewCardsSmall(),
                SalesBarChart(data: data),
            ],
          ),
        ),
      ],
    );
  }
}
