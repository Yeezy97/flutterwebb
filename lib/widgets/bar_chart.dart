import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class SalesBarChart extends StatelessWidget {
  final List<OrdinalSales> data;

  const SalesBarChart({Key? key, required this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    List<charts.Series<OrdinalSales, String>> series = [
      charts.Series(
        id: "Sales",
        data: data,
        domainFn: (OrdinalSales series, _) =>
        series.year!,
        measureFn: (OrdinalSales series, _) =>
        series.sales,
        colorFn: (OrdinalSales series, _) =>
        series.barColor!,
      )
    ];
    return charts.BarChart(series, animate: true,);
  }
}

class OrdinalSales {
  final String? year;
  final int? sales;
  final charts.Color? barColor;

  OrdinalSales({this.sales, this.year, this.barColor});

}
