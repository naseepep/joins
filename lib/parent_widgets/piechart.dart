import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class PieParent extends StatefulWidget {
  const PieParent({super.key});

  @override
  State<PieParent> createState() => _PieParentState();
}

class _PieParentState extends State<PieParent> {
  Map<String, double> dataMap = {
    "Present": 8,
    "Absent": 2,
    //"Xamarin": 2,
    //"Ionic": 2,
  };
    final colorList = <Color>[
    Colors.redAccent,
    Colors.blueAccent,
  ];


  @override
  Widget build(BuildContext context) {
   // var _BoxShape;
    return PieChart(
      dataMap:dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      colorList:colorList ,
      initialAngleInDegree: 0,
      chartType: ChartType.disc,
      ringStrokeWidth: 32,
      //centerText: "Attendence",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        //legendShape: _BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );
  }
}


