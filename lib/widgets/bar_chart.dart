import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class SalesBarChart extends StatelessWidget {
  final List<OrdinalSales> data;

  SalesBarChart({Key? key,required this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
    return Container(
      height: 300,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Ordinal Sales by year",
            style: Theme.of(context).textTheme.bodyText2,),
            Expanded(child: charts.BarChart(series, animate: true,))
          ],
        ),
      ),
    );
  }
}

class OrdinalSales {
  final String? year;
  final int? sales;
  final charts.Color? barColor;

  OrdinalSales({this.sales, this.year, this.barColor});
}


