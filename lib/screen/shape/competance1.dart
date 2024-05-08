import 'package:flutter/material.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:vertical_barchart/vertical-legend.dart';
class Competance1 extends StatefulWidget {
  const Competance1({super.key});

  @override
  State<Competance1> createState() => _CompetanceState();
}

class _CompetanceState extends State<Competance1> {

  List<VBarChartModel> bardata = [
    VBarChartModel(
      index: 0,
      label: "Node js",
      colors: [Colors.orange, Colors.orange],
      jumlah: 50,
      tooltip: "80%",

    ),
    VBarChartModel(
      index: 1,
      label: "vue js",
      colors: [Colors.orange, Colors.deepOrange],
      jumlah: 45,
      tooltip: "75%",

    ),
    VBarChartModel(
      index: 2,
      label: "REACT js",
      colors: [Colors.orange, Colors.orange],
      jumlah: 25,
      tooltip: "40 %",
    ),

    VBarChartModel(
      index: 5,
      label: "ASP.NET",
      colors: [Colors.orange, Colors.orange],
      jumlah: 40,
      tooltip: "80%",

    ),
    VBarChartModel(
      index: 5,
      label: "Deep leaninig",
      colors: [Colors.redAccent, Colors.redAccent],
      jumlah: 40,
      tooltip: "70%",

    ),VBarChartModel(
      index: 3,
      label: "java",
      colors: [Colors.teal, Colors.indigo],
      jumlah: 40,
      tooltip: "70%",
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: [
              _buildGrafik(bardata),
            ],
          ));

  }

}
Widget _buildGrafik(List<VBarChartModel> bardata) {
  return VerticalBarchart(
    maxX: 55,
    data: bardata,
    showLegend: true,
    showBackdrop: true,
    barStyle: BarStyle.DEFAULT,
    alwaysShowDescription: true,
    legend: [
      Vlegend(
        isSquare: false,
        color: Colors.orange,
        text: "Devellopemant web",

      ),
      Vlegend(
        isSquare: false,
        color: Colors.teal,
        text: "Porgramatition orienté objet ",
      ),
      Vlegend(
        isSquare: false,
        color: Colors.brown,
        text: "procédurale ",
      ),
      Vlegend(
        isSquare: false,
        color: Colors.redAccent,
        text: "Intellegence Artificiel ",
      ),

    ],
  );
}

